Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7CD2E4982
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753388994; cv=none; b=As3EWwkuQesIyX3TYc0VpXf3W0Ei0UDGc9JITwSuzK9SbfTSmsXDXPV3GEY7Ytix1256OYnnQoaUB0VykxIeiDmcxK2wMYl4cYxFtpw3yzoiVTX4LMkMZe8nPYNa3D1XRvZAgO9wf0OBNF/ETCZz0ZTk4R3FKyRz9CKmOPu68Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753388994; c=relaxed/simple;
	bh=JiQvb61MfELd+jGQz5th4lxqQiVvwawsGQQMRUVTaio=;
	h=To:Subject:From:Message-Id:Date; b=nM4/LB614jEgpwuBNA5UxRNpgnqVoKbBX/wnn1AMlu6JyyWdaIUM68Fdrig3+pjeDre2ZebKBwPrP5Slx7PISVZ8XyJzFwBOYWP9M+dQqBfWO5AAj2NFVRKFn3sozNs0kjP31faIKLuVCUta+OWQpwj6rcE6VAi2nKIE4J+/E1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGF0kch1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VGF0kch1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D30C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753388993;
	bh=JiQvb61MfELd+jGQz5th4lxqQiVvwawsGQQMRUVTaio=;
	h=To:Subject:From:Date:From;
	b=VGF0kch1jMJWo2OGG4khZFx9QQ5eCcmGSd8ppL4NvWAVFkxDrVoYNHRJGVPwHKnpr
	 0abp4vt9xK+CIoseiPpwcCdHsKwaIurHpJ8YNGfbPDlWoIQ1hyIbuIAQ3zY3fQdQAC
	 7a3i975lI0ZRLqg88Dag044L93jm4L/QcV6/NFqXXJRyQA+r200PN81cAJia91jSur
	 pAufkdnz5np+jWA8PYmkH4X+JQQSgC8E0yMzsQLdkfw5gU1h+KSsQ5fgNe1u3yIejX
	 bR7SSVUnroTdlJS8Lrs9inck9kyTOxNCn05hp/Zgvdufgsl6qM2Fvbvy2Ed8lCLBw+
	 lTQAJAJ+BJ0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E6C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338899359.5418.12675000837520212955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3296315cd27e2dd2f6e66709822896f8560910f25c021b513ff1e170fb047d25
Date: Thu, 24 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753388993
