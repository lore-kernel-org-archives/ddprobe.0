Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 775EB38238D
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791268834; cv=none; b=DeklGveOvc1qfPzwnC2Cf6hwHSqRoNUnuM/PM/DX40hlbMhoiaN+XY/hnalvCx0u2pCTvHPeA3pM9yOGrl4rZtZbz0khUtgwc93eW5/V32YTYuEUSTHhpRy6z/HjRyEdnPATPJANXq1s2TDDZLWEZPilgHBJZt2WTcLTf0RMvIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791268834; c=relaxed/simple;
	bh=Gh//UfiIZb7Ccn0jjPcAVy797k58JATyBC+/7yT5uYo=;
	h=To:Subject:From:Message-Id:Date; b=RnEM+j4IxUG/VP7IGUQlP7cgy0mjx9ZVMuNsAdidGm7BUeVsGQho3t3sp6HitNafsiZHNDRRL1TxaWsKmGVW59tIpfpKEz8Ait85psak2V61NKs68oK98bCPVrPNc/+2tqFlRp21I2U1EzchsVcBnF0kDEY/fpHYkqBlQnQ7fEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk8cOG2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk8cOG2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4D2FC4AF13
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791268833;
	bh=Gh//UfiIZb7Ccn0jjPcAVy797k58JATyBC+/7yT5uYo=;
	h=To:Subject:From:Date:From;
	b=kk8cOG2LI9Y8JkhxYsqWX05sQApTSETVq8z29jStZuih0/SeG0bDYqYyMOqtTCZEk
	 3IYUXqaSuZag8MX8Z2tZN2oHyIJ5s8K7ZC2oIi0RXijg0rXAvYjxSpBG95spuFCSTJ
	 2ORGLZPe/CRgPr6UNv7FsavF6C/0vyFlVeR2FCQ/hp45UTLOqnCMiljSUkVxa3/iwt
	 c37ABOcfMD+1NqHGGedyw9hz58ZYDePFeUke/kpHZTTbDew2JmGM+Y3ArsWwcnOxL9
	 Nj0Wye0kuHaP9r1a3M5a/OTiNDZM9pGKu5fl6loU/IPxCKv91eTGClPRNMdiA2g02N
	 uhq/m1Pekng/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8857CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179126883374.6814.8145041750423254378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 010b787cc3eda6ee5f0c134684c2a127e5e9d7f22ca12d42eed89d423a486b11
Date: Tue, 06 Oct 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791268833
