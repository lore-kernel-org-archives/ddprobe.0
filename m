Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2951B29B0
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755940794; cv=none; b=MKMcaSI+Bp20Xyux/M6B/6f6D484RntilUzZfyRA2U7vBsyt3rCOKzoezJJSvt3Y3woPseAJhUHKuDTtr5r25Lsq9BRIGIyYlH4/YykpNvtHMkCBIEp5brrhWQoPYTQ3WhhsIAIyufCDwHwcNxQkG475bKL88qEIn9h8QnvC/rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755940794; c=relaxed/simple;
	bh=7/+whGP3VYTl4gpb8c6n5RITj3fjX9f/gfUSAU2pT0k=;
	h=To:Subject:From:Message-Id:Date; b=ucKZeo7P408SXYLCsjVl3V62bJwJaRU3YZMHU8SjTwrcCMVLhnhY7oqFEQXig7zdmwiwNLiydhyrs0ydrsK2PJdJHk1FfiESnQrKf22TASFO4sZljcLyhDt2dI4tInK7nZf7DL8MBl4qjqAFlgYDtIsfPJSOy0n0JcLfDGpsDOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QEQKCW/o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QEQKCW/o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E80C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755940793;
	bh=7/+whGP3VYTl4gpb8c6n5RITj3fjX9f/gfUSAU2pT0k=;
	h=To:Subject:From:Date:From;
	b=QEQKCW/oezjTBXroLiGujJypcWtTdXwaIqM1g6NYzRNGNS0sT/EuL2ZZ+7NGmBfMj
	 8oTGwk4BjWUsKm7jcBBYfxUbfgsR4bFSi507EG87yG5J+zonwwyFax5JAhaPVTt5GA
	 //X6hw8vsDH9HHcS+KaFdSVQbrFRGjyirrPCOeY819AqXcfRgS/yMxkGYJEnbIt/zW
	 chsTuwkT7zQKvouq7W5l7fOOtMY6LOsm7rGN53jS4+6IlxLKXA7vx55P7A1IWu0Cfm
	 FACYUfDUMOuLbUi/jlsEgEmHqdY8OY5i4Vqj4Hoye9BVxGGCFmyz2VHiLeEU3X6zKm
	 sGifbQ9GlmVNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E19CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594079357.26855.17818403555268508115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0326357197e08c9d91d8375a76914c9444024d053320a487257e91856687f1cf
Date: Sat, 23 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755940793
