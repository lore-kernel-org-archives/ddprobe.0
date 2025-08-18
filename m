Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365971F30A4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755488394; cv=none; b=SRMB9mXStIpnZ5n2k1/uxca3EMgl/m1t3xzsk6C41PVhBpGijWOnBAuyHck3tpL/1LIcFU9gHb7g1f13/5oJ+tNVxgOg/TNxBVNz9GB6olIGDsaMF0VtQhjSV1gsFQxDGs/EJbs4r9khNWfWuqt+iK31/c3tVKM78yRxvuiwKBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755488394; c=relaxed/simple;
	bh=uO3mR8MxUP3Qm4RuWnL6tQP6wCMAmS7xQS3VrefgRRo=;
	h=To:Subject:From:Message-Id:Date; b=bbuPrQ9RuaDeOgWfDPh/JHSB+3X2TzSiJyV0RBN0TxecaGT8EE+WBXU0/1bTkp1sF4ZXTQNbuIgJEmrqK6MZL9bAfY51cO6cDAKUJOYSwmF/PGn7+IDC7ZgDMwgDXk2NX4im97xE1QXPZFIUazJAtNLark3o2poYu6+/rdTVB3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yjwlr/bz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yjwlr/bz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69DCC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755488393;
	bh=uO3mR8MxUP3Qm4RuWnL6tQP6wCMAmS7xQS3VrefgRRo=;
	h=To:Subject:From:Date:From;
	b=Yjwlr/bzL3cqF7KNYJfv1FZKDpWyB8Rx0ViqFF00GVbEePzjCdPOq1eoJwLdf+dyq
	 +jtQZbylW0Iu9hKQCiEplHEkXiSBr02Rvfa5tsPQhYI/JeFL9SUWEwEmiy5dE5wcii
	 3nCV9r5Vbsl5zdKT8e7XfToxy2oU2pHixGZJox3xKv8X0PJ/DY5nUuOvQUd27xatkW
	 eD+Bkz2bUHwgKXSdDBVOf8ly6NbHTJLLedJIKLve2pp9Xedila4CwflY5Je8p1rD9t
	 MmHjggMXzUTOrdiUXIyfxpH2VEVjV8x49RDiHQ97reaTMu4L3hqZqQ1kOV4Ar+tdok
	 dvGxBor0YEpgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9102ACA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548839357.19493.14683753218492838116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7006d85ff25a3bb6b265c7c2d038b2da9427831c12a9f22cefef01ee62d83269
Date: Mon, 18 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755488393
