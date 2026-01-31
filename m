Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5B22F9D82
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769892834; cv=none; b=n3JElLX3eUNmfOoE4K5Fh8RnmraMHSnl19lNxK5HsT1DzCu9eBmOJaCOAlzklfb+EPdlhAB2fMO+wwyCqbcUDG0954BNDTwTUTBR3eJ5b9zz3qlRV9hsmWEYnz3X/mbAnMp10Z5ytHCzUm2JbKF+JBGaJ/Q6PQ2/cxrEX620NNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769892834; c=relaxed/simple;
	bh=5x4YTmqtid2l6mYukL9QqjDuOeRBH5MoNbcODen+SRM=;
	h=To:Subject:From:Message-Id:Date; b=XmsTQyDERp6eJm6Mhd593s48ZBcn8lTGojYeox1UYomZz9Oua95uUD8Cg/ksNo61u6VqQ5c5mnsey0PySU3LwTvS2w+JodTdEtEyWSojYuBO4ZhvXq72fQfMn5Ljg9RfKxC1qwPsHx8QS/DFS41OET2fi3S7wKnvyB1DoYm5gPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdgXK8SB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdgXK8SB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5127C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769892833;
	bh=5x4YTmqtid2l6mYukL9QqjDuOeRBH5MoNbcODen+SRM=;
	h=To:Subject:From:Date:From;
	b=KdgXK8SBwBZLHYDHdyKrdCEuCGfZslwRfuq61Ga2Fh3ucYDLkVM/K5lBZzHKFUBPk
	 GSuVLLxMVGDIduVoabgJodXxZfthUF+wvIypw1cl1tPEIuomJJ5rQgHWmkOmNf5K0m
	 JF21D6fT37lCOiHKh7NCA8wu+92qZRKHljJo6VsQyfzrbS7n/ntGgEfbJl1WbssSAC
	 dBbCMX6cfgSKhYm1zv8vqSDTPl2MZiUidSGJyX7fGJw3HGHQMsqjfDEs7ux5MHfnMc
	 SaDfxdyd3i5nyHpugezWQ1iWPG5J4W0tioEKUkYB2CFoRMCiL9B+nki/OVFT+UBzFY
	 ryCZ5Tr7946yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9168FE7C6EB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989283357.21945.8625173850973205706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f51c3457e59a705ffd127dc26b95dc0635e887915119ea54e55f816232d3973
Date: Sat, 31 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769892833
