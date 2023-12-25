Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4958715A8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qoUM5+vI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38B4C433C7
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703471896;
	bh=0tCqfVaq8DOvVsIvKhKgxOyL/yOroi+WNwNC0wbWvAc=;
	h=To:Subject:From:Date:From;
	b=qoUM5+vIyXIrb6heL83H9w04D6kJIlmHcGvM3Ix+38OSzw9J44dpNLZ51OLEqLTi1
	 mgXPp0Do1yp10NyIl3L+UGjwAA95nASa+7yXOIdqXe4euGojiwsx+nYbEvpjDZ2YFk
	 i1Kb4jKN+LjOkI3x1dcd6rtLXLSBqzEUndgnWswLQOhrCWsYxtbCKpApJgt4UjMVuZ
	 /vl45N9/KFWIsOUQbbmtRyjNncJei1JF8jTI2ijDJOAr1L7bbtmeuxSGCfjs+vm37e
	 CqhdHhEhEMy6XDJ96FsK4QHXVJwHgLa0PtKDYO8BFGXOl3trFRtW33LMKSmfdnkZFX
	 OKjsbTtlCxq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80226C46CD2
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170347189651.1007.7406775933141777596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2939b4ff9aab5955ae34f88aa7593afc31e75cfec42e4e011edd57b38dc24c4f
Date: Mon, 25 Dec 2023 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703471896
