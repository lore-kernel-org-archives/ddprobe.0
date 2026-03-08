Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBD426290
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772951694; cv=none; b=C1Sb7NZDTdSLlnAaByOjXxbVhA1yAUbt6XZ4vSealKLfAmqlLvPjRaU4E7m1XWxdpXLfu+qsI4LSNzuZrlqBL0Ev34RFEHyr3SDCC1aIEAkYhAtIR2Ph4NntlDslhe3TjXjUkJEztV8bwMW+GWVsbt7pVhy+a6Us/dS/DsVVBGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772951694; c=relaxed/simple;
	bh=89XXvLDT6+XYQFZ65EJ23L4fk2FSOfVDXiuSPINzY1k=;
	h=To:Subject:From:Message-Id:Date; b=po/0Qbskq22EHSNfG/E46RdeSix1cOdyhYkNv/IDCLvVEzu1gQZl8WtO/607RYdZuHieHaptjo/VmZWvarjRG++H8M0sIzfUzNP/lLp8n9DObJS6WPYon3RruyTG1/ziGuO1BY5HD8gYra+KrG95RGhsV+CJIi83JBHSxLthKho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy3QOd7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy3QOd7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F22C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772951693;
	bh=89XXvLDT6+XYQFZ65EJ23L4fk2FSOfVDXiuSPINzY1k=;
	h=To:Subject:From:Date:From;
	b=Uy3QOd7wP3F+XTM3gXake3AOtokHZ49Ow9CcLgU3b22Uxwbmo8JEqyquRmBFIrc1h
	 guzrCxjzXofhVB8Ip1Xuva2FhSynyzPdx34VsaXHE2UNrexRI3cULIoL2Gxp5De7ye
	 n9BPhinddzvEBJD4nU8Pz0DNQfkvuk4WuAyXRDhOQi/EFDFHYTbRDKLmG0/IwmqBbG
	 4s57Y8DjcqnKXubYdqkd6wtwfIhk7n4Vz15rg3YKMvtS8FqBCH+Ow6tpe+OD6JX89Y
	 LliwugVEQ5dGl4m9z+/4w6v8qwQAPaO7Rk5Ad6GNf6ot5M4GOvb60qwu8Nb3cPZeup
	 HxDUIBFP9VVVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95475F55137
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177295169357.5733.5952754077256864126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 414a67842b1a4867cfcd25c93ee3f205b9ed16b1270aa931262fe6b2fa9e082d
Date: Sun, 08 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772951693
