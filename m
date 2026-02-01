Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2770A25B1D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769924034; cv=none; b=SJ6xQQ+TK331SAgap51dOm8SFhwnDwAIRU0iYW6DcXxqSAJP5avZrpDFMdIRgRxsyFw8yJG7WYRr436WY13VfXVY5JZTOkoP3UTclUpNgZu2iOi8BFb9JEMcR0fV6h5xDKRe6PLJG/8aHKYi1Tfa/ebgzhtSM9/Ul/nFDlwrupQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769924034; c=relaxed/simple;
	bh=xRifZz27WXipKP4ddbnFX1ZOKQOiD2wxz5wJMHURIGk=;
	h=To:Subject:From:Message-Id:Date; b=Rq3WH8csk3jYV7r6QAKJb/hZ4UTcGpQkcPuvl1WsMt79pBkSB4fpgmelieQBz1SbTefI0IDSDZ7CbKGGgFf5GcVUcPG4WMrkFMK6CBIkm2hJeBIDzEIViaKO9sDtgQP83kPzRlUjWFpDEhGoCaEh24/fYBbvdM6HQeHg+LqfR3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDDxRp3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDDxRp3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63EEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769924033;
	bh=xRifZz27WXipKP4ddbnFX1ZOKQOiD2wxz5wJMHURIGk=;
	h=To:Subject:From:Date:From;
	b=fDDxRp3DGTfrzoozGeEFOdOwNEaB1GaUm9XhVeWGgzMyMft735tafoONEHGAjT7hp
	 z0Qaf7q8GAK9SIvrt2a3EJXr1m6sraYnNkYHpjszghYYRQZyyRxdwRpp07clLclhOL
	 4cocAX8YwtvANU/u+UaHNfxkyp4ZU34FEAfeR6tX7OPWhoGcrBCG4PfJz/DNVj6n6M
	 l6Hx3vq3cferz7yT4B429lRi/clOEjhTrThO7RQK1o5OSEvq0h4rRBAee8BxDDDIQZ
	 7AYKPDThOvQVEk8fhgDwaiPrRSx4oCDUkKPFx7bzyusxBpOKqiq6n+D/3HFzceDWQe
	 Axtqrk0xWjwxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF1E7C711
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176992403357.27163.1371323952520349946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26584f69575297996e371c238e33e3f0f57385862b721b792a137302c91df59f
Date: Sun, 01 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769924033
