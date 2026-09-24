Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4194B4119E0
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790242834; cv=none; b=VuXmGHrZfHYUjYhzsiPZxFL+uKmJCnJCdIX9k2vDrosb3psJmybltjR15AUu6bsNkRnO1s30gFWhhcvlUirfEuu3kf8GrMmuURayd+5YPMVI/r4S18Zp9sYbJOX6uVWj1HbgeAHbLtLBlc0+3YTqd0T3erD2qH7HlxVW97ZyNxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790242834; c=relaxed/simple;
	bh=iPxyvaFRtBRwK+vJMXbcL9ZbPbYDStUEL5WXQ6wC4XI=;
	h=To:Subject:From:Message-Id:Date; b=Lz/VazC5aGR+iWoEQlilkGq3FN+gqpOHZPkU7g9/0U54PftcVGMn70ptCXGgsLA7zlCiNrzgUCnq0dhr3IbhdkBqv+MPGX3+CxUB7nxFiQJlxoeT1GFrJVPU/+AVIFq2SKOjIxUWFgfMP0D+h0hFdSAQMh8TbOUY3zJ4K5/Ji9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKynAILU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKynAILU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7C80C2BCF7
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790242833;
	bh=iPxyvaFRtBRwK+vJMXbcL9ZbPbYDStUEL5WXQ6wC4XI=;
	h=To:Subject:From:Date:From;
	b=mKynAILUVHSKiTNSHk03UfxeZ/j8HM8LpInwMLq5mcTuXdExbEVq4BbewVUqUmA0T
	 tcJllNT5vF1W3khP4ayLqiNiIhPl6U/VLTFogaDdU0cW+OJ5xHYSfrOb7IHVGc1Zqs
	 LlICK6Zyy8/cyL5ubI8PGBGA1ZsXUnQxnSA8qRJ2eFuaFSrjp8TnQ+5oppIhwhqoWv
	 llb01+GDQOqg6tEizYAZ9oKd72ZnbmDyOiFeaYyTN345H//0XP9eYgd40BJIBZ7e2O
	 91YIq0d07hZjS1T5M2iR+tMDpRq0YVIHwqHlh9XasPT4REqg5TggnetJQwqernKFYn
	 diOTur/VC/B2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B604EC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179024283373.31938.17048668772160450577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8b78803912b165150cb8f8721562e48f73935b464e05ca118c462c92e55dcd2
Date: Thu, 24 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790242833
