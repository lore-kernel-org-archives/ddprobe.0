Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D60405C48
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779124834; cv=none; b=fVnZ2xoDHhUyt6F6887AxFOS7aXW7dsIEZ8a9SoI0S7ey1PLosh1c7NddHqmrq4sB6nDrUbwGz6vQfjxOvKwiDRuwAXdVaqDVh82DR2rIZ/ZKANd40xvJFP5mp4C0PUeoG10M3ip14hKTzhZ2ukR8AGcjcFByucxU/lPtiTwnMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779124834; c=relaxed/simple;
	bh=BV9miYcffW4KUjgv2p1E1v1NGgqSj58IRFOmM0dopbw=;
	h=To:Subject:From:Message-Id:Date; b=I7QMq5Nkd1pqcbELzUZ/EbJ12rAlOTr/mQUMAWE7+P3YGSbPhWAARFQZVwLCRYp0Mq5Z+LFmclwL/sWpqpQa2QB7mE9zuX3Zfb1dhJ/xbq9/sHnIoFJA6m8s6ZJ1nGUedGEi3Gmxx7E3t8NanYvBKp5htXkltQzmAOgekf2H4qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYUGKwmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYUGKwmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7EDC2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779124833;
	bh=BV9miYcffW4KUjgv2p1E1v1NGgqSj58IRFOmM0dopbw=;
	h=To:Subject:From:Date:From;
	b=aYUGKwmqsd/l3LasV8Oc1JToWdBm6hr3IWeiyHdIK7Gm97Dv2Ea0Ngr8HoxmNmioQ
	 giKxkAP0rLvktU9CnAwVn9rpjxerE3NclDq/dVvQATW9f5/x9R8BBDZzCWw3V7cwhb
	 HM2gTBN6KMZQtYhw3iyJCp2eyQQ0guBodKSzArH+eVZRIFAW8Po8f8HwlzvAS3NkpH
	 EUaU65TnMkF7tDON3hUExzcl6p/fmnBYXhXqIf776luDwdnV89hqXTKf03NrpJDiGi
	 geXvC9PEcB2QavIEWXBbSgngMrXzzbPaJ9yVibkW2OqqVj9C8iyyjxbztCb0yhxO1g
	 BIGoTq0t2bkmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCCACD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177912483369.20345.6218407822510070838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a496202f7f9b73d0cca5730440d56b83a8120de3c25e63d6abe6c235d38355e
Date: Mon, 18 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779124833
