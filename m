Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3BC034C9AC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769519633; cv=none; b=rmf7faNZQF9nXYm9S6F0YT4JZXx6jpU+YrxqfWgmbUOeA2QEZqCcClRgAhJW8NvHlk1S8hZfyu5ix+jol4wNaOhcMkq9ymLXTAd1h/moOAarM2nS2f1J0W3vuY1YEHGoYlQLULeCDzDruQ7mBEFFG/6vZ6f1+A0z/aORHqpVDEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769519633; c=relaxed/simple;
	bh=WuWsWmrVJnJvFB63v12sCQRFlMudDTcPibiaJWHC1gM=;
	h=To:Subject:From:Message-Id:Date; b=XgpjrSVgWUqd5RL8Nnu/Fa8ZRQHY+4B+sk6TXNua5bIE47RddJUpLg3/r8aaCO0fvotHgmqodAaY5HlEpeEIpH5L3RKGNmAfDT2VnggURv5uv8v0SQ4+WjyUZQ7opuONXt/lB0b4Ce15Df2/51IEG/aUCmZxNgLJJNuZBRFEVKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roAF2pCT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roAF2pCT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A343CC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769519633;
	bh=WuWsWmrVJnJvFB63v12sCQRFlMudDTcPibiaJWHC1gM=;
	h=To:Subject:From:Date:From;
	b=roAF2pCTT3JAYQbi/oxuAsceELLtD8zTynNFXyGtGbbOtPGxxfoGZ3+Yk+9PQC3TK
	 r/vpfUDG2qNLoiE4EZqNcTHLz6fRxPBu5WYYx1hrpdwGiW/pKbl/hZMdzB0d2wluYX
	 3sA45pxCdTLjeNHIG4El7SkiGgfgp9mCd/9/WFf742HGa1+tcbo+KK/+P/QLcDLhOJ
	 zfAapz55RhPHm/5L66zfyLju7TME7u9wwR/asIwYL4fJcj6+pA4kfBXh99zEzJo/jU
	 CgkiVJZJAKD41a37bijBMPjfwAuy+MXTFYQYtMa8RxxpbHPTOvcUFwNoItAZ1cMorm
	 AitkYELSAf5zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D61D2F024
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951963358.13314.5571198645205402508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee94eaba92924a178c6c1cfe14cafc23fc1b631d4f7a8457362e44e76b120921
Date: Tue, 27 Jan 2026 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769519633
