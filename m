Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A3EF80B
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754021994; cv=none; b=SEhjAHJTdl3y8fg1E3vrunOBewU42Wp0APqke9bzmyNSWeXCYio28n2O39X1Ll/ZYYj1iPDV9A+n2RN2Q+7kELKW5r1aATDphgLLxsBEgarAbXUcRBODiddsQQZmludMCNmuvWv47511nsFQ6vuuHyM1r1tgkAFAtsbDrFLLSH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754021994; c=relaxed/simple;
	bh=Bg/qWrZYrhdbyhyC1/kNITGogwd/3ebOFuYosKFb1po=;
	h=To:Subject:From:Message-Id:Date; b=L449CEDTtIMvkEwLtEqFWirf/ODxYIkUszfQr96zKoKcjArvKfwmWtSd6ZbqgaBOpUb/5LpMR6/2Lq7ViBN27ZCjkVa+aAFynPLbfxbzz899L7v1XF0R50cBRYQwkHfTHH8+qbVooLzw3MvFpoXo7fxCwCs7WPF4qBSg/v8UgpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b24Ox3YM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b24Ox3YM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98EBC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754021993;
	bh=Bg/qWrZYrhdbyhyC1/kNITGogwd/3ebOFuYosKFb1po=;
	h=To:Subject:From:Date:From;
	b=b24Ox3YM6PYE+sv+P1zSmMyl4vMLH+X4+hpW6KhVq7YV1E5SX8QCrmoyEUZ7dSctF
	 O2S5arn8of7talS4XtW2XPjT+AAtIZr1+EPGZ1KRFfU6k+OkMsjuyOB+XO61v9Q+lB
	 1HFhOR82KWgSG8VQRFyHC07s8NEp7FEK0jmQ6kUe4DOZTUBTH5gavXbX4yzyImk0G/
	 VZ2MINfPLFfZzWFnup6jnZpkMAHWcN4PJTgnvakdH0+Cbt2/MtrnxoaOh9tmo8rI8P
	 McC1hpWCKh6KnbQQmCCQFF77j8bKu4wR96jgb0RXrUaV7x9f3E/XzMf8M/610uLAAl
	 E4Qgm9CJ+vZHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9424BC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175402199358.1024.5185546818382673316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffa2d0e8c375f7fa30b3c921d661cace22a6d2798e7496b6adf7e01238e433e4
Date: Fri, 01 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754021993
