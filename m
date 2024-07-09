Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E7038DC8
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720562783; cv=none; b=gqzqrzajWZ8z3HjlojJwcvMPmNHM9hrjgs7Wq6a/x7mXoCoD/cKS3PkOFXsDnNwLM+WJXFyikHkEGBokSEW36TeGlnuVyxqCobUZp+E7dYlpnmba1W8zOXovDJY1/ewp9IGpTGDSiyqHK/OP4cpvQiN/Z8d18p2h1kEi4m4or+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720562783; c=relaxed/simple;
	bh=b/q7c8ku0GtvOKV2G+AYlcrvo+y4wpxQx1X43ZxhtDw=;
	h=To:Subject:From:Message-Id:Date; b=upLe8lptS/EiKPswIAS/xrs55T+rXRUYMDctJrVuWEK3P2iWuhe+yZqUlat68FFCeftBQ8OpX1yLHXFKZwPPumy23rrc4PICW/vxK0xIH+yfYQMciVQC1Kzp8wOBpWvqonM3U1lvPQnalb+zTiEl58EcvUOLeTmY97R2AcSSorM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPTuGj01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPTuGj01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46D2C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720562782;
	bh=b/q7c8ku0GtvOKV2G+AYlcrvo+y4wpxQx1X43ZxhtDw=;
	h=To:Subject:From:Date:From;
	b=FPTuGj01J+Nv01elYatBKufZyWb8pLLujx/uA2IpRo+KKXlM0JeOfhIN+pCO3D6zB
	 3h3FwBG75Ace2KOJUzkDHieVJ2zbiYVlO+3Oi/78592daFGqXgglf7CEiLGjcvYzdR
	 Fjn0RcTvQlMG6SIzHrJ8Hz++MB9RpCU9VQQbjyPzybNfVXR8fQ5WiCUp3/SRwRL5qi
	 xnle9lZ4VlcfG2Tp9JxEhtNADlvpSa5qIRpQVXxEMpch3vcw1VIro6/FDAcLJeb/HV
	 daqfvpzRjIRDWy+MG3bW1RxBKdPxlK5KkVJgsRLs5wTIrhZzTPdpSKRO0GYprqdGsS
	 /EJfQGFrqXAoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B5BC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 22:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056278275.18738.5534377684879879851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb5221185ce3bebfcb8ca5935e9fbde440fb907e563f5382aadb31d2784d505c
Date: Tue, 09 Jul 2024 22:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720562782
