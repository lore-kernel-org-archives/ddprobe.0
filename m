Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44593E1D05
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774450494; cv=none; b=EOUCq5MGs8KPLdds/wQuMlKlgWamLrSydVAHfUQaRzy6Ix08Bbn8uASoFSTofdTOrpQI3KEdCFr+Cicdp3VAS+I0Hpr6may9d3SLY5OZMKRGvBGCMi4kN+W8uDHfFA8vUWxONRzjs+nlm32O6PtZTAW1xUzQYkbougOcSgqJiaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774450494; c=relaxed/simple;
	bh=/XOua6WKlNnmH/G4e26I1H9rkKeo7sgdvmH3GyPF9+U=;
	h=To:Subject:From:Message-Id:Date; b=LoCm7zmalpz7vILeIldc71JHJjFYoqJSCaKfOYiME/chpEri8ssSht+ma2ZcOmmK8snmaVMteHJIRRZdN+vRIsckDVLhqJ2v1cBmsktZqWI6WDRzYX2gBJU1bL9gQE0iqvL/AyW6yDFCWVtw53L0OlsNNr96IuLZSGKWgkWTV0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLnxCEpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLnxCEpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A096AC19423
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774450493;
	bh=/XOua6WKlNnmH/G4e26I1H9rkKeo7sgdvmH3GyPF9+U=;
	h=To:Subject:From:Date:From;
	b=nLnxCEpZJ/rB6TMDz5HcqY+dw8PID6hoD044OQ8O4k9Z2KQR0MHNQroVsoo8/MVYs
	 chQVbosXQc7T02c3s6C0o1yCGj8DUMmqEjn2L2wqGZSPrW/4Pc3UiomWN/f6M0xWOs
	 dN1x3m4yE3a5gxrT0exgOupWPSIUKyNMRODzq3Ifp39RUa4i2vfRa0i0RiTgHXwjkj
	 PFnGItIim+JMTC9TgkGYhtRS6KbKg10oEABsbEY0Z4KQgRKNSI7dEZqJGTctGwLIBE
	 1fFq+M9BLYWuLIMMCeJWBg63iEdn4Iwieyq6do4LykR9vRhY1Qan2kCAkjRKNxzd//
	 h3ljXuGkagU9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926C4109C02D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177445049358.11328.10904067999169642944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31123a921d590f9febfc57bb57a967eed79b96ad1a02b664735f4f5a58f14a61
Date: Wed, 25 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774450493
