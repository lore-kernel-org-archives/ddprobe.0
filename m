Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23138149C47
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728937554; cv=none; b=Bl3YBK84cEU/7qbNjywb+Odflf4WbOYNKMytxu3O2L9kH2pPzBGQHI4DLbDe09bNSX1tnRq3v0cdgKGME/h4wVhssvsqFYjfSEImtp1euZylaridV3+Wwu/52+N4jgutMt72WW9oXDLNG3LUs6EFHs09419c3g5J3/3OusGKRSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728937554; c=relaxed/simple;
	bh=MZ2EkCbp+w/ohRCvlm/EOHRyKEZAwJ2x9TjQhCvfS44=;
	h=To:Subject:From:Message-Id:Date; b=Kd5XpIz922sAmp3nNNbD5QUaW+GprHdKlft2ngFalAykLmIKPNgE+uUR3KmkodMvx4DhTw/IRSdNOJSJeRfvKOhd5q9dj/leBcskBxY5Ry5FXpqpD6nEgMGXWTpKTZXHzW5VMMs8FXp6lcJ2VLJXxv9hPYdcn/bGIfZNQTLEKiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dxRV+Ytq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dxRV+Ytq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD4DC4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728937553;
	bh=MZ2EkCbp+w/ohRCvlm/EOHRyKEZAwJ2x9TjQhCvfS44=;
	h=To:Subject:From:Date:From;
	b=dxRV+YtqLg2j0jFF4ZkGaKDj1DUMb/z47zgQzEHof5UlsUduvJHTVSQoB2KFAj66O
	 7mWJKFMdXWHAH2AgZD65tPEQNXK8/fzd85YyMOmA+RVmwtYa7H0wnYenxLh7RvIKoV
	 JSI/XcafT0a57aLcX/YSAPaIusjuDavyOR4ETBpLPOTT/2TRWaNIfqqlxyBrYUPxdV
	 e7OCwIA390F5+XRd1BdpRHrkeGmjjbaeSG1F+x+iSpCXYjXyFk5z8dpsjtlFGMl0PZ
	 rRmL7D4vqnjHLJsdj4nxcpn9xdEMZNmjiLMghmxOkCpDCtz+URpRY9SaMF0CVDSBfn
	 Lc3fV8133e9Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9949DD18142
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 20:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172893755360.30178.15289196591416562271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d505061b4d297bb728dcdc62aace3d2558225ac432794dda655764b62a9b448
Date: Mon, 14 Oct 2024 20:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728937553
