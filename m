Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499701D4606
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789825234; cv=none; b=gKj1VKIaQdBbHW3dwK/LTbk/H/dd03nJEt/5eOfLXq28jnvsHzS+grhkPMMHPGHWwoNJ5sGJQxiW/KxpYLtSfuG1M0c+7+Y5PXH0J/ghPaO54T9CrfopyUwirHFhvPiCy39hf+YgAJt2I6Uv8xHqkWV4riQeIbeqzb9R0lF8Wx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789825234; c=relaxed/simple;
	bh=i4ti6Ci7tupRszgj/1Mf78CtBvBthVi5ChXNFE1Zf48=;
	h=To:Subject:From:Message-Id:Date; b=raaiKL5F4IJ2R1WWrC4rC2JA5WKkIxM3Fm2y/QJ655JWE5FgR+6P/8wU2YTsN4RobXgQumVra0k+50oBgx6PBF4tsSr+mPfXTdVRkbKWuq7nf+kuorMLpdHrkNIbPsiqy13/ArzBs+QXOh9XOmcuk89fk6LFdi+NCo5rmMT1GaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jnvGt3TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jnvGt3TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D419AC2BCC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789825233;
	bh=i4ti6Ci7tupRszgj/1Mf78CtBvBthVi5ChXNFE1Zf48=;
	h=To:Subject:From:Date:From;
	b=jnvGt3TBvB3hb9HB3hcd7QXuANz3iCwWIX6ZRW5p8UNZb1ex6goBDE3ZkP9/5zWIH
	 bWKGAWFfJhimE90GxIrHEeqC/Eos6MevUCKUPuSm4Jpq/Uy3FpYgndgRbrAaR2y8pJ
	 suQroxbFwz4g9AOd+HadYagF7XqJpg8X3i0q0UHS9a3oRzC8eXtMwUGJxOLpS3atU5
	 iu2hmFfyDXWdfZLoxPOIARwcfyLXcqE9jlP5xphAV3TkqXHw+4oveK5pw8mJ/9/QRn
	 1DzCKyR9WGPIntDhrGWVCFyn9v+Gd4DAHaqcrJPygTdONKnccTfZf6iTw/SgX/JWK2
	 cn44+gD7o6eOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B16CEC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982523369.6803.6999846800503091304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a854b48013181571e84c0fdf056edeeaf416b7dee42d4257855366fae080c5c8
Date: Sat, 19 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789825233
