Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 069C0225D0
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712493497; cv=none; b=ooW3hN9z5HGsunqdKiN/26JSZDA4lFH2ydQNs1oizzPdEFxR6PwxZZtkSyboA/cRE5kBgjGzOaSLlgH1ZTnmsr55oG6uSuMKwLGSELtITAgy9idcly8BFAjCL4SukCZy9k448JpmKFPG8zIZhRdslUhjfxYVoYl4FxiQgiGek0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712493497; c=relaxed/simple;
	bh=R2VPIJcHzvnr2ACUJHS+12mj2xSpdX2JY6hPNpC2Hsg=;
	h=To:Subject:From:Message-Id:Date; b=r6Ug0ZMIRI9Agaw8o2AuzADSFUHbJMb3gPPRcoh8N/IHhtD2NG9iHbeHoKRzG3TMD88/2tkF9Ue6Ee3w3o5PiXRlSW8xIoC8aZN62OqQOEq6HD69R56t3bxsPI31o90AcqpCmPAL5b7bsTzWkpcyU1Rzf2UHn4Uq0DmvNiz76/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIrdIQ+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIrdIQ+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7653AC433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712493496;
	bh=R2VPIJcHzvnr2ACUJHS+12mj2xSpdX2JY6hPNpC2Hsg=;
	h=To:Subject:From:Date:From;
	b=JIrdIQ+LSW1VFuGZ2+HI1p5Lf4V2/eQSibnY3XZJzuqHI3Y0BmWHtZsadHpEKxyZC
	 QAEXrkWOvVKaXosA8lcxXmuper6TRiLIueWrejRd2IndXuaE0j73FQZoe+GcsGboYt
	 mY+hqNGcA115FGrBt46wZpCApQv5WXsofY8sL+c4PKxrqh+fgZOBrLpM3hSTe7XRXV
	 ZikNND25SCltc2pW31aNTmYk7asOzY9PisWq1oiQt7BzRaWGdQusk9dIFA6pJyMaOl
	 PNZHb8Fsg8KR45m4u/c1cFOk09n/6Rx9FBh3tbjVeTDsOFTLxi0utHV/6d1Y3zy3pq
	 G8fWu3ykMIbIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62D8ECD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171249349639.31529.5297948388357030055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458ae1ffe39e3bfde2c51ec9ea12774e6a89877abe2bbe1fb8dce07f3e4fff5f
Date: Sun, 07 Apr 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712493496
