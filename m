Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4997F1DE3DB
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770474834; cv=none; b=C1BS1hNfZATsj7Gd0p0zO1eMSOaoBET9L2WVW2r//x+gVcFP+7ZoHOdtTCCnvpKBdIqTGiu7YIPKFpSwnwgacLWrk97xCRlQHz6w4fSXwjhhbhG/0ijqUWI5NwRMNjILKqlavVkH2zF06H5iHF6TrnCnh4yV7G2tQ2NzSeOtfUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770474834; c=relaxed/simple;
	bh=HEvammTi1it8v35LiCDPTHarN5SoKWHS/cDOEJYH4gA=;
	h=To:Subject:From:Message-Id:Date; b=VcY0ByeTLVXYEpxumF/2LMM9emfQoTrKypQ8KmtfSWYpzjOtanM06Z9OuIREikVsnFvTAXdLPC0NLUVP57FRm6NGmxMEkylE9qth67tZJLpO12H8RSD9hkiuQd9oVDu/1ki5r6i2dOTP6Qy8VnjJkAs0IxEWKDfqoARzSUAhMiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4qtYRgZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4qtYRgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF98BC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770474833;
	bh=HEvammTi1it8v35LiCDPTHarN5SoKWHS/cDOEJYH4gA=;
	h=To:Subject:From:Date:From;
	b=h4qtYRgZdaJS51IjVmc8Pg5kb31q5fQ/rOBn+spIWfQ5Gs3nfFkdkSG8ZuQpG4IlP
	 sahsHEoMF8DW1YM+Fild0uTIL4H/swKrSfn61j4Js2q+jRpm2ONr505eXm/ThKR/P2
	 pTYPGHEw5JJ0/oPNWLQypgzAXKbI35WRrUfO6uvBRFXSv3XacmfRwlMzgmFwtm8NP1
	 VjQNW1whzDuS9pLKCLGJgIPZizCEa1UVdCgNK/c/8jl9ltT2KhdO6ovU03js5vkbkb
	 kpDQY0gOSKqLxh5Bd+0zo3ObZ0qguMqp8ebiCH0t8LnKEb0L0zofWUb2ALSZnBLE16
	 2LxuZ/OyxuFCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A770FEE0AE0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047483366.18917.2636477609125362359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 943289685032f69480d76a9817353eff50f741eda6ad881a521a20e31cb65153
Date: Sat, 07 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770474833
