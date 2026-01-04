Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19307279DB7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767561834; cv=none; b=OyQZkD/P/T4Kr2dJwjJf1jIImFY8sqmSQtGPIf6+8fhqQXp5j+xCNqzKyATSAu33FCoo4o2wIdvbgcVJ5COv03OXEbHOVAdYCiVOz8TQ4V+UAYFCSsrDB3+qqc5KszRUjJHCBDn4sUQ9LQHnccvf8EQVVMirmsQsuKuiGn3s0xA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767561834; c=relaxed/simple;
	bh=rk5DXXFifAr+sxribmVw0mn+qoBI9W2GtVQ/NWmK6dI=;
	h=To:Subject:From:Message-Id:Date; b=iTWtSMasWhV1Mf2eqE6N9hplEHUlBKG27RgihenWRZemi59ggISKu0MjcEJQtskbxXOhFfWGYXcmBhWYYkZ5fg38/kZ3RnPZcJKfIkT9OGm8Ak8cvP79Wx5TNP/pxBcAEk8BYa4sTzzNvjdvKl/XvRVFiD51tOUT0ApgLS4POpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZqXh/rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZqXh/rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6012C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767561833;
	bh=rk5DXXFifAr+sxribmVw0mn+qoBI9W2GtVQ/NWmK6dI=;
	h=To:Subject:From:Date:From;
	b=EZqXh/rkyDiM1Qh2mFMB1yztQtEe1GPaYu9Z+GT2HdKR0UmQAyKMJKpmjeKR8N+3u
	 grYi8Sj1K26icqMVjsrxvAIcr/KRACBJatseEBZyF1SP6OX/CcFoZwO6nYET58cX9V
	 Tc9d7yutO/U7G0CLug4jP+UXLgekR7o1g59y5jKf2Tdg/NT61lBRMx5U0g/4nxwI5v
	 zB5TluLKGY8ewaKH6YD+Hrm2tnT/JbtEwkP4bY6V7MR4dEjMLjQix+HjBd6arkInIm
	 VQzbL2F4yLxy6VupmrPv/y5IsT1qRLHG73dQjf14lsqLWFEFNi9L8V0blw0rK8sZc3
	 VOH60wHNPE3IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BEFC2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756183357.12311.9771001936431136789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 771a81195537be6e9e50937b84fdac713ba4eff767f0bb7781e980bb3b88e166
Date: Sun, 04 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767561833
