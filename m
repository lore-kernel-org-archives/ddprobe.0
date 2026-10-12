Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7257B25C804
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791799836; cv=none; b=NsDKIzxFER+q0SBr3Bzp0dx3xsu3IR827j1PAqC2quumJfzroNTHv2FVELsm2/TcUicXiQ3rG8T5nRTvl8+qxfKAOH6RP5jwvdjzheCZP1FdyXUZlpoyeHlioJ1wfXyb8oydbb9ILltFLh3Govgb5Krt38Qjb0+Ma2VtPY6EP0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791799836; c=relaxed/simple;
	bh=SPdGrsU3oL/qr0X5pgMv1j1GxO+coHug83PP4bT+7VA=;
	h=To:Subject:From:Message-Id:Date; b=gMz0xOh+CexLonhHCM249DxcSvwZaaUs56jlCeOjiMnZUfcO2j/Yi2V37QZpjipIa7z6CBAGY5S7wnAwZBK8tpryTaPQ9yqClAH9z0aF62DUvyTwNhiFd18K6ep8Iub60NM/sQGW/9m5npDYXpmCUEZUSJaMkHGaum7+clnbx0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iyRWSkgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iyRWSkgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14E3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:10:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791799835;
	bh=SPdGrsU3oL/qr0X5pgMv1j1GxO+coHug83PP4bT+7VA=;
	h=To:Subject:From:Date:From;
	b=iyRWSkgwLeoIvDAiDvSNaqShcFN2k79yDGExOKZyf7qsQTmKC/AfoWAj9zkLLWUNf
	 u5v3PdOBCwRbnoJojgmEH9ReGHgpS5SrLzVlfY1qW0MNE8vdKw+GgboqenWGMfPnb7
	 Uy7V4OhxZ6x9Qjy0ogm7t+HhPiUAl7EbomaFRWeIlRxiJD6YmnOUt5HhqmkJOxF4oU
	 VL5UtBn6SDZXZ8Hg8CJalJIdmc0V0cNiQwQqf8TZr1rRcLbttlCuK8L274dMxCtCPf
	 /UocA/mkhHd01T/9wGIgUgFV+e4sxL1m/eQimfYubL3QiYsSfa3fe3ajQEuHSpCzmF
	 DEgZprrJp+DWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4A4CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179983369.28625.6253590087305351566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d9e52416ea0f2a3ea68b7fabb6240142ef8e1b2233ddc6dae5b56fe7997782
Date: Mon, 12 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791799833
