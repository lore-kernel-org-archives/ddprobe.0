Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BCE139D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752382794; cv=none; b=q2MZHune9h80oi2x1KiTatFyvkgYZAIK9aa2Dg+UhlBYDFCMr2ruMy4Y5ZgoHSg3GUCculkf8wIGMZ2qY3c7OmBtlikIX+/Yq44kQW9t0N6gPEGZPSlJ401b3ctwTkvtfteA3BbdMM/BF8+LRQqLPZNKvwT+Dt75+gsItXIbwco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752382794; c=relaxed/simple;
	bh=xsV2IeuZLHNX6HxN1mvnIH063iceeCxGKkcrI0MTa4A=;
	h=To:Subject:From:Message-Id:Date; b=MGIoQ38MaaBOvMxr9WjgqzxvjGzmz1OuqvJBktntD7F4+ce3yvLhGFqmZ8jA5Wbekkx/TbiZD6mKT6nUTrIJ+pKCjJHYEtl79eyzrq7BVMLeH5Q9oZWaxQyfk3Fi3Qnyu/2kEsFL6xCOYq1K7efz+rKOXM09lz3BipKRRLgXK8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCMUpACG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCMUpACG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A197BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752382793;
	bh=xsV2IeuZLHNX6HxN1mvnIH063iceeCxGKkcrI0MTa4A=;
	h=To:Subject:From:Date:From;
	b=bCMUpACGgaKxzOcvYX0g2QPcKciu1yZwVcU99YoGVlC31svKGNDkVBPsXPwye8dIc
	 0nKj9GkZ2L2yqPiD4eAzYxZtniXRcvoNKK/Mo2VPQBGPuV9r5vsGVlqsjSy1MZjy7o
	 4bUzKXuls2JY2qPJPKUPCA7mPmJCkp5kteBCDKBEPEHBxEUk2Sn3KOj3tGNbTFWEMm
	 q6+B5/fmNIgiVVg1Nfz2XvjA+SYDxT8ZGUBpnLLc1do/Gv1U1GlIWzkCL3TGoohSYS
	 cEiud3x02yMkSrmbHP1exEPgoDDbNGZBEIp6uLdhaa19tYr5/t53dAmpKbnQOXLMXp
	 BHwCOpNvFlq7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB0C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238279357.19155.14991567347063050429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf2588cca70faa4d47260e45f612818acc5c2c7205437ad94151cf7a210ad76
Date: Sun, 13 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752382793
