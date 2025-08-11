Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A074315A
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754881194; cv=none; b=gjS0t6YxAfp5JY2eu/ypRnG+pvJHZa7gfEYDOy9LGowpnx8OYtQR+/RHsxuU8q5TPII4b45pKNlekrBP8FuTXvC94WcwW7Soz4vfyBXVbkODh66cqTmUuaUH4WvMZmcddHJPSFDjvQo8QX6tvROCVbjs4CM9AfegFh6AYG+e1UE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754881194; c=relaxed/simple;
	bh=Ztq9MiY4eCFNMYmmk9NfVgW09hR+/MCJGN8B8dbdTxY=;
	h=To:Subject:From:Message-Id:Date; b=PK6NtfzyvHH4OgP0xMwwfaKTCFd56yYgfEG0CQJKTsCN4eRU+s2A30r3r95KcvnmikiRgvyl2Y+W0GgtB/9OnSIc3c2GtJ2jtos5S7Sv/QPU/0OuEZplRnSdAoQhQ+Ur1Vqj988QOaYGlRISjoxeo8FCQGxeY1xfvxdw+pGel3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBFZ74/M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBFZ74/M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29FDC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754881193;
	bh=Ztq9MiY4eCFNMYmmk9NfVgW09hR+/MCJGN8B8dbdTxY=;
	h=To:Subject:From:Date:From;
	b=jBFZ74/M7CqFo7HK4xA/nJ6aOzyza+aV7Z9JjUStFPS3oCPRGqXJFnRoFqw/QGBtL
	 +JVpnKtbuFFWcWxV+xYMU4eoGbThltrvfzzDcuNqbTcocbn0ab+f5nUy/OV3Kab/9J
	 Zkrtjy6DGOM+HM6BcoDP9JCwBidvsECmtMZdxK8znhnPMUTeXeKDTB70nVbQb7CNZk
	 bXMivcFDCfX2m/jkaYwC1Z0ktu11+wfzF3gyArGJq/5a8XyLx98POeQkKH8uPXWE1M
	 KMWoAT3XFK+K467mXjQrD4aEOyRxAAZ01R4CGwjekNEz79bYzWmhdsO4gkE1sq2Oem
	 nDZS/MSmfZb7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE2C87FCF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488119358.29117.3906598274616187461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ccf06d2de4abd7ce57668eefeb4d540043d55cede5cdf8e86d097441072c6a
Date: Mon, 11 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754881193
