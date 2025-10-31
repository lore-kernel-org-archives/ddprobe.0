Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B614D2FB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761917394; cv=none; b=AVVZ+1brukpPb0b8taUiPU3DSRBI0Nc0EqvQBSRa+qCPeiKv/AAu2i76DjXLhxp4258LmnUMsGCfAWDWzio1g3mAu3q4So8uMYMS8wxgNLDSPHyvP2pJ8dtGwJaGCp+mmfet/nZ7R/d8/ChAScuuF3P2z107nHzJLODwTtmQQTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761917394; c=relaxed/simple;
	bh=hWdob3cOst4EmG190yyu/U50xXjsA/o7Zyg0dle6Bj4=;
	h=To:Subject:From:Message-Id:Date; b=uCrtysyIp+YiMCJ/0RjkXmLqzI+ZFbspwzdtmLW643gev1b8W8/CeTpkHvf4LBxUJmMl7MKtv/kO0oEnptHXwXTr0pP5X06JpJWBmpQMbA5IPNCNgSatpWjOAhf1hoTfh7Grv2hoQug28VHuR9DhNxPulKxC+ZOMDX/5CnH/dn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfK0aShU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfK0aShU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4666C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761917393;
	bh=hWdob3cOst4EmG190yyu/U50xXjsA/o7Zyg0dle6Bj4=;
	h=To:Subject:From:Date:From;
	b=OfK0aShUrTwBrdjD86oZWuiCwN57DsV7ZfY1TgfwJvRiq9GOZc5iHgrKPET1Pvlsp
	 g/n+RlnRHGc3+tSW4BeJvbhFB2SWKi6x0FEVGgeVrkCuJ9kII7Jk1F6gTIiXkAITRj
	 tSmCJUFbCvlLqdOkn9z+ToF2e1Dw31Vr9U4ovfAon8keUs0uS7sXF2azxqxhixE9CM
	 ZhYyc7zTULXHHRM1hb8ucL5hL9SaT63jpaf7hvafG3BQ0DZztp38Hvaok5/TbvtH4S
	 hfqmqVAaQrTLxwLKwJJkW4o/7kDu14yqKLMDi+lphm3PCE0B9NTt7GaeBuRqp6Xsc9
	 muI+TEgX86ccw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CECCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176191739359.26048.16716463008551827669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 326c407c667d9479a52bbb20e1af4a94dc53d9a35a59a393f895f6d4a23fce3e
Date: Fri, 31 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761917393
