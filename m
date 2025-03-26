Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB9DE56F
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742949594; cv=none; b=Qy0WqYFAup/4qOIT+t3emDL3A1Divos8w2Hmoh5QpA/2vZI3ZLSbP0Uuh3WDu11ORkAOP5BgfP+dnPx9IfQg0Pw8AHQRA+AQB+kOkDGVVEEGkpGubI+VltXjfSE5/tpisjbwUT2zxUCk5v3rIL4ziNjojeUrl8hCPtPRbUKT8pQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742949594; c=relaxed/simple;
	bh=aJt0KWpXhD3Wm+F/DaEr+PqpAzJXLHbCue++pDzoBnQ=;
	h=To:Subject:From:Message-Id:Date; b=HmYRO2kGxiuETIkYqLX+CGFZZjeLIGT/EXmH0K1k+ljHdoDN6IRJf8cG2rgQiaHw2WJw4DEBRAqj7brLt7ek7ue4lttGKz8sKvaBo6dgmM10/8KRA/StLgqam31ei6gxLKuG4+8pWvG7OUDMGL4tLDVRqLqC6NeNjYKFxjEYgUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxJF6cus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxJF6cus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E2DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742949593;
	bh=aJt0KWpXhD3Wm+F/DaEr+PqpAzJXLHbCue++pDzoBnQ=;
	h=To:Subject:From:Date:From;
	b=XxJF6cusaA4P5fjbPDZKZhZQFwwWNuwNYwTA+EX5QtrvE3sVjucIBJViDt5NjSOLQ
	 G+g7HILtwhHj2xtCiSErE4ILzQsXyjQxHjJQehe6oISSthYFgWE/B/MlwdebC/GbAm
	 cBLRHcJ+7cTxa3VcYXwObpgM55Lhg+ugLxEbsD5bixkfm/R/42PDbWF/aKqO77yI3a
	 ol8hB/SdmhgtLjEfLizuw2zX6BE31WfEmUMSuxfOyO5sFm0efaNCRlIazxK3T9ZIL0
	 Dc/Y7O3ajEstGthB+0rjCLIpgMhnOcBtKPxw+4gm+64yHex+wVZHoGkGPPo67wpkuR
	 MbcaOFZBIfbEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B028DC36005
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174294959370.20413.5611562567013485794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df3cc788f11513e5cbc0273642d89ff44f156ccb3df26b01e191b19a39150ccd
Date: Wed, 26 Mar 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742949593
