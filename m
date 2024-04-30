Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBF91EB40
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714517543; cv=none; b=r+yisspP+UiITMI6gx3W8AHJU8Qu42Qk8nKRIY/Bphr/lEPgICNi2rqpxg0ZVtZp/x279ylWC0nOsMUWZDLNs1YSzUlozT98i+rmGDX5x+Jhi+uTvHILR/qZmqebJkuhVY0VlqsBGb/igDhMSSwKU/k85D3YUZVkUJRs5yE2/tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714517543; c=relaxed/simple;
	bh=+LZQCtk2XgA/MlHg+qleSQPQrg8q8FTY7TAS7PMZCEE=;
	h=To:Subject:From:Message-Id:Date; b=AjBhMZvUn1U2g+2sPjQU1DvTPyNSrhpAm883e6QFeXNgzoyr6ZKvZ7gzQ/4Fqf9XHZIcJqjNljbIIug2XezVFC9MDTeLCK1Nqq3x6yETOm0IET2GEQtE9usK3q0AbmXcmpD/z4rWZwSr9WOqZq/8jvUr5kCgktfEmIZcAalyPy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNh1Zglk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNh1Zglk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51BAC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714517542;
	bh=+LZQCtk2XgA/MlHg+qleSQPQrg8q8FTY7TAS7PMZCEE=;
	h=To:Subject:From:Date:From;
	b=WNh1Zglk4i36DPp8agmHs2Xw+gGRNDlgcVZYwt10FGoles+L7xkG7cBKzmZRiHSRF
	 +IORO2Gbmtc4lEl+NScazsH0dPR1cbFNA7jfuU40AddysOK6amADEr9yht+53RH0qj
	 BWrlYd0jpN+jH3rLTjhKf33XvaoscstiOfEDlgIJnL5Vq0Z7LejyfaPAuG52v7maAO
	 6DgVzHfCT2WNJMFjoTerblas/iZM2L6MATQ29UXr15v7migQUoEKYtBTw2V5YMa3lx
	 Kf0dCO2C29/Z28r5JRt1Mllgwkp+LahxRMqR/4fHfPlbdpZ+2yv9VuKEvCXCLUr7XN
	 6aTsK9ni97Z6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14B8C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451754278.9290.14368116021864221983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32fcf02788d3d4a6b972a778376c92f02b50b68b354f74638efdf9dbb0b9b2c3
Date: Tue, 30 Apr 2024 22:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714517542
