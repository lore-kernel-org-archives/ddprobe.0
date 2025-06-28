Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF03FBF6
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751088594; cv=none; b=deahVV5rXLQKGxSX/a6EMrALibZPuua/U2Tj3SMsw7Gyp8sXTlPhL8QjEP4OCwhsBum4Vx55/VkHVgm0BjXGy05zQ0gghCiqiOVjVtaNX5FjZMVLUMeDvA+iU+ktrQDJLPIZ+wyQlWPLxJkEepQOHegFzD7fe+3Z3OBbxQCP8X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751088594; c=relaxed/simple;
	bh=8ynSvxOx/VCueZVCL0TOxYBgROdIpPbZxUSKTZ5XYmg=;
	h=To:Subject:From:Message-Id:Date; b=gWMxRoXdR8pe4mbzJOGX7oiU3vQ4EiW0JhwIk47Wlg7JqSPKn4x6onIHo2q8sg7yyye0YHs7MOvsZTz5J3VMGWYWW7Yp7TP3S3fECJyirwoB73aWrocmooqnevLKEe2oYoBXLOgry4rcfBTEaGOh41kFSm7+j1IItmjdZA3nP9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdtxnaRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdtxnaRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0171C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751088593;
	bh=8ynSvxOx/VCueZVCL0TOxYBgROdIpPbZxUSKTZ5XYmg=;
	h=To:Subject:From:Date:From;
	b=YdtxnaRwVfIybrXZppbuA40Eipsy2W2uMOxP3VVnSjadlJWiqvcXM8q2a//WVEuWH
	 ynQ8Vyz55RuD1Gs02D+2e7jhsWi5vrlRvag/fbSbisohpuJzeRXJ2DyeaJwudjna83
	 ohSQDhUrjBqu1WHhIb3ZG6QMwpL/DjR2wfMa/zUrKQhDJN1YQdQmLPFt2hOdSrGWuX
	 nTLUu+aqu3T1XlpFNLlIXkgQtWLdxBIBGM9x4+svmu9Y3tB5Qv18i0Cua3AZEq5F8x
	 1s/tu7eCBx6Zbp8JWWftMdfggIsV52YxdyUpRG77BPngOKT6LLo2CYPWOoQPm4W4aK
	 xwwTbjo4BeuIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F3BC7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175108859361.5251.155896274474445509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 391ae3ab14277fb21031311860e29e18a3b7dc5ad65c61224d94f520e864ade6
Date: Sat, 28 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751088593
