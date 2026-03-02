Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1841A385539
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772437494; cv=none; b=A11c2dXsTE1dOeaic2cUkJCXSO9HWL2ZLBiVDvEHUY28EHpcwfZnQC7xNFkhqksZHf01vSD8ReoDuJPMohGfLVTCChV0SL0C+M5sKTWeem+rnykxYfN0jeruP8PDqTDfWE7DfnV9FcBT7Y6yDycCZKFqnKI4w3HHve8yyLM/vFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772437494; c=relaxed/simple;
	bh=jb3JCXM5KyKQI0x0GOa9zldKL4kBz1MvWt7iAV8FVio=;
	h=To:Subject:From:Message-Id:Date; b=QgGhM68bkVo7xXMq67D/8DwlLB2wBGBvk/QI4VsV0RDrw2hBTs6Pg7w5SELJl8x/EjpSERs9c7IXQHklPIkVPPoDI9gLy6JAo7o052R8AffYev1N3XJvpovcbH+DRCarW/s7W7tbOYlSrHw21X3Fbd+MrFz9zX+SIqMYl1RMskA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyouyIq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyouyIq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF8CC2BCAF
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772437493;
	bh=jb3JCXM5KyKQI0x0GOa9zldKL4kBz1MvWt7iAV8FVio=;
	h=To:Subject:From:Date:From;
	b=XyouyIq+P0xDCSKWDmNiveZyA02eAuvBmJI5TdkvQsprkNGGtF2duf7QC+h5vyvmF
	 5QnSAkzKYGFn9Fd8xD2puuf7Mwc9MiXF3VBk5eJSmYbf6+XLL9OWPAhHctRVdoVFbJ
	 X8gOI9+tziQEtDEI51Oo8BxJ5ai1PL50+062TWJFFVaWdg3NBxMyCef3VRtOKYBDQQ
	 FlfL/SwAApdkR8hf99xLdauSWpANe+tWvasV9/oG9m8l960OJ5XiXfhMCs1MwXTLK+
	 Hp9TFkTeZtOSQPIttwgE2GJmyT9wqfkhx3X1aQ5NpBPAqWQ/xuNn7SdW+KRKzbDf2C
	 RuTa/oJAppASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D74D58E73
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177243749361.26018.18224367825151485743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a88c916c59baef9cc64bf9efa4bf7fcac301a23405c94605975b1401bda4a0
Date: Mon, 02 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772437493
