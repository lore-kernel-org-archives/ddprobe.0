Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FB737DE9B
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776962854; cv=none; b=qGZUsMGUysJo1Wm/zLVqp2XN7vD0u1jw8EXTUVw9zjiz/MX0M3O8BNEI1AvIyluST43rVZzCXgj2dKZvEH3FjaDVu0YPDznZzyPcnsbFnlm+Qg01ajDe8OHFxbyt0fQ/YmFHwJDX6lfdJTt06AgI+oJRkqxr9TxYkTZEpHWa0/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776962854; c=relaxed/simple;
	bh=IoY4XzjpA7/JzUUG2RaPPIMgQGKI6qbAIlki0JT/FRk=;
	h=To:Subject:From:Message-Id:Date; b=WqKGofNFNBxbVRyWkITyvpy23UJidrZ3emqtsFRKRw2YMnKqjvt10sQ5M3ETVF8+I1VPXSPcO3mmWgySUsWVIOBqsaGru9jjAJt0mRvNJaFbEmOk/quY3ywDkZep6odDmrdFLEkp31HexrUVps4k0z3h60etrGVt1AaXg0pjs/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdEAfbTJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdEAfbTJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29DAC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776962853;
	bh=IoY4XzjpA7/JzUUG2RaPPIMgQGKI6qbAIlki0JT/FRk=;
	h=To:Subject:From:Date:From;
	b=GdEAfbTJcGKhvRGkzAMUoKtU0M+c1Jevsv0DVKqEvXIRQcjY/fJZMRJKjQtgRHlW/
	 MBJ2IRGQYyf65ry4VbgTtVkgGWzl1yVbLONFdDEr49n8+0xSiIqNeBZ3PiHmSO0L7M
	 W8EEBigyDl4SL2s+d3njkk40D21zSGdfqUNVLx1Tnkpamay1HPlEr7KhBKod2TDiYK
	 q+jS/1eZNK8ktlYtQnEInrRQZ+BhSemLmvNvwMcP9LqOJ18oxMZZrNxXMfR2MxlecG
	 lXXN+EfczbyGGnqsErczXkTkNl/cb2MfHRefg5egRSgANzP4M4ekH1awqkxngGpBTg
	 Xx9jxMkGVZbRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA679FDEE2A
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696285368.18069.2871636406014340225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41927acf8e67782499e69005d0289ef6d593fa77613b5b814fa0421281bfd541
Date: Thu, 23 Apr 2026 16:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776962853
