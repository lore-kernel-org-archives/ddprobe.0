Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC442E54A3
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754991594; cv=none; b=YIahNgHp0wtCwW/xoA5uLMgmMpTpiQMKvxXXbB+xh7IfxiOStyEAi5FOw84VeAmNVNLOr9BuJesayBRebFb/PG387q8CHPO6qLE2QuOUtDG3+jNd5LfYe1fTcjDhbR6AnRLR89LOr7DwpPZnKvv2D4NhGH8uW1GB7otdHjH4/7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754991594; c=relaxed/simple;
	bh=ZNaF/mlDep3hdX+Me8MXA+Tgh4H0tlzitFFL7sHDAuM=;
	h=To:Subject:From:Message-Id:Date; b=YD8AYLQgoU4bkNddOkk5NUEfjRbT8jaU8RgVswavY0Cy3biwg3zzsLYzdWU/Wxv4ys/QwqHegOqfVPlbG+XiJc+TXsvarBQkg7D0pPeatvcfrY60gDsEqtPbZx9XFYOLMOzlUVM51ZE+VJnaBvB4TOycjveqKZm/kTxMT3mV8fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNBfURgY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNBfURgY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DE4C4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754991593;
	bh=ZNaF/mlDep3hdX+Me8MXA+Tgh4H0tlzitFFL7sHDAuM=;
	h=To:Subject:From:Date:From;
	b=VNBfURgYwvB1mWvUhnWipUs3QGVBWa6mfWblK9t7HKjtccrWa3XgAttUdSYcNUoM6
	 q/IgnEsyRHVzwxFhtCuu8UZT9t3F2BgllQfuge+zE6dSF7owrWAWJg7kF3gksq0r+P
	 og5sLvK/gc5mghCDyLLmAw+nKEvwRCRYNw0kA2vRaZZc8okBl8UEx/D0mLOaH1hKTh
	 G3p9paOg30T8Xh6zjMbLBLp75bGdakjDIjdQSmTaBZECLMsoa6CsZWzv+Bo2FNyZTy
	 DSL6D61JtBShHx9VTxaKF8DwNKsWdAuIsjuChnnpW/OoWPbF7j2XvILb0bBvZJn1pH
	 gdBmbskt+mY4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97ABCCA0EDA
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499159361.20272.18396713324290952055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bdf551c1bf53aa293b1701862debf8cba3368ac322905794862cade3b4a712
Date: Tue, 12 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754991593
