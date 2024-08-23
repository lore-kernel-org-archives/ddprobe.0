Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9661F94D
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724397354; cv=none; b=bMi61zKT+VnUpLDmLvaqrHv/XarUbcEQSk1+fUGP92bKKw6VzoE4CPim0waBBAYIX5Vp2GnoLWOxnkHTPoh60Kj2snwfLY3YZGJvqyv/D3G9Bzg/yLgFPYjatzp3wjs02Vz8JQ7t3M0wcE9ePzYBma3wjmydrYa/Ub7BNcfjBqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724397354; c=relaxed/simple;
	bh=/CiFSroUY5//4Z4nbyGnA0CqGlGAj+fvAe9RDa1Rm5o=;
	h=To:Subject:From:Message-Id:Date; b=G5LngVm8OKt0r+L/JB/r977N61XwdyB1pRzTkjR8qlUtCZN4c/govfpitjr3ZVF/Iy7BdZZmrzRbg0ZquF4rt1IDTsQSoqNfv/PVSZY/kMnsNP705N5+hy7ZJPiE9bht/ZzLx4WsH5Gyrq4wC9X+RCg1jkxUagxnbsucLf5n4qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEteKtQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEteKtQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D71C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724397353;
	bh=/CiFSroUY5//4Z4nbyGnA0CqGlGAj+fvAe9RDa1Rm5o=;
	h=To:Subject:From:Date:From;
	b=UEteKtQKOTKDXXdidhKm2XVuCMM788Rnnd5hZa9CsU28rHMvL698kJumN61HCcr31
	 dIkYAiCf2eezaP5JcSPiXDn+Wp4pkdsAKbj9SBflnCNm5kw8aT4mzWp6vAzQ8ftoqI
	 zMZ6eFpzucKE3KZMTxswSpEcFIL0+uGP3n8y9qTlBtPwGPanpsvzeiFdZmSsHPsX/A
	 PcKUL6259GRgt/dfVJQHg3bqE0tJ2GkeGvoyfYJqbLGLNqbT5/2fdlj2HOJjtSQNTt
	 FCuQZ9zGPzK3nGClEaQbGWAhdB++4NKNl5j/J2DcBQYbm2HW20EfqBqIdb9BV3Kc6U
	 CVbUHQFkRZBLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0CBDC52D7C
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172439735364.19592.17635565440093999077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a95fb141f227407c466d9bc989128526a9979f8ea23098bef4c40410bc9176b9
Date: Fri, 23 Aug 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724397353
