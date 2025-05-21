Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4151419DF4C
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747858194; cv=none; b=k1Dg6+Dm/eUCg+Ju0Zine/KRVzc0AX848o2FW5QzLkntCsUBTMyek0zKoz4wZHL25LctMxy22kEneh1HVVqvWyYLvIg6zHMyHHTg0sTnvd4kIbuG4DUNq9Cjb880+C39v6TflpYGY6+vfIKDAMSRuy4nxI7ruEOPIb8Amp4WcVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747858194; c=relaxed/simple;
	bh=QbRDLRWfx+Ng0tD8bNFc7zm7REiLuc+pOkCNbaSwQ3M=;
	h=To:Subject:From:Message-Id:Date; b=R/wEOYv8EP6wI7gjPR3TQCG7NkSx4pvTN6Tw7M90kKsK5bo7v3vYnJHe4w8+pcmmrrrHy31+8sYdVou9wBsFIX0+G7Je0NnDCC9od8Ue1z/QPkBiUiuGS4st5vElQdOCxep2jXMaG3FQtkpfucqdxOkrIibp7BFSqGwgqz628ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DvxjJGaX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DvxjJGaX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76E0C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747858193;
	bh=QbRDLRWfx+Ng0tD8bNFc7zm7REiLuc+pOkCNbaSwQ3M=;
	h=To:Subject:From:Date:From;
	b=DvxjJGaXfnfZFxKHMdYA8yEvGcUVvbOiO6/9TvYbQx5CtCrVIxqIPjCFB/+QvoZ3d
	 hfx2DmKMwr4o70vZ8mDxFFykdNk0DFLPP0DTehZ/4eFTMVu0o1wq3EWUPrW+XHv/yj
	 IdwlLutwy9UtL97WDxnKVMPKJ8tatjfA6Vlzkx9y3j1lyPDTwQHvGixaxNeZi4cQPV
	 LnRVVQKha0+H9do9B9lSaVKLID8WIIG5S2tiV2T1exlwrQPFHRM5KakllgLNY/II7r
	 POm/5TL2iSPcze1UGubNg2EkyeOftPaVcK4dhvy+d4j/TXULiZHXxeaf+5gVXqnCm7
	 MjACGWMUxbrCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92036C54ED1
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785819357.28201.15241314764608470387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff3d3ddad68b19651c9856291b075d810f80e387b9d7ae4355cb61d0fa279995
Date: Wed, 21 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747858193
