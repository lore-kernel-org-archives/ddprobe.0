Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A952137E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750454994; cv=none; b=OqsaOEeMczOi1iOZZSMdO8xGMuuqQLKKr93hlaEg0bx6kKzk1JFbYs147FMT0FRmbTvdjcWOn0+r+d1T4xr+oLh9jX/lVEFlCBoS+IjXVlSvrXvDwBl/QBl4Q9cKkWjhMsZRouX1SZwvnXg6c82Okbpl1vOtR3bLvGQMW2VRSi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750454994; c=relaxed/simple;
	bh=pdbOecZrTYeA7XSdG7HK7/dwyzw4JD+3ZgUlMUpMUo4=;
	h=To:Subject:From:Message-Id:Date; b=KPbuRavxmm6Y6Bl2nSPHkcOXiQhydn2S+bPLERuOtxDWtfBiZ3Ab8vmoywg/G/jrW1aEKyo8bOlYZzv3g78kJkBCO06e25JVFQFeBYMaVZc2O3Rmm9L9xoxkLvXZZ0yQkdpXkRlyUjesNs8Tgkuhgec+WEvvvW2xCjg1g9VOeJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih8OxvpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih8OxvpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC9DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750454993;
	bh=pdbOecZrTYeA7XSdG7HK7/dwyzw4JD+3ZgUlMUpMUo4=;
	h=To:Subject:From:Date:From;
	b=Ih8OxvpYdAhucwJZvLE7VH7ImRCD2Q8ayFBHMSAvyQms1e/3abdfxT8p6L86r+F/H
	 cztSz6Rt8VPs8S7CNwUTQOd4wKdwWDsTqJb+FvDypISDrCHgmTl/n0WGPtF5E9DaD/
	 fJi5xwXAZE+eMouSFkNemDq8wn/z3e8hEwSmPS1dinVB/DyTVy79apLELWF7woSzDf
	 +mlBypEtsny35iQc/cG+6Sr5VH+yREhkzkO9gfwPv9rvftS2LkLDakPRIv0Q+yuNFY
	 0qxvJ6eWWVILGr2PdpF2Q1opCIDM/0KmTXUZe9VHzvIbT/wL39w2mU88GBADaXubUB
	 J2VyIRxz8Luwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1AC7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175045499357.17093.15173435514510933876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e008a99fc4b9bbfb90369659d31aa965551e818401c964733574ddbc1c3f8cbd
Date: Fri, 20 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750454993
