Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEAEC133
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 03:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719114143; cv=none; b=gAX8Lqr1nbjyKGDYiMR1W6RNT/k6MpyloEEYRxc5wxVn22ARHHvtI8tB2c2fvLpbBTUAsTnE0inw+yJKiFJHP2Npu6LfjMIIC8cDIHLIWfsic1qI8AMIZ5lk+SF8RZpJiXo4OQMTYBSZKmDrEiSDj/XP5OCQg/qLyiDtbUugVNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719114143; c=relaxed/simple;
	bh=i1gwIijV7X/bP1QlC9GpQEqxSlPbl9OIvj0cMytGeO8=;
	h=To:Subject:From:Message-Id:Date; b=qC3Dmu4LcuCpPalgkFMM5zmiTWLRZd8AUzoKk0Rssf3SSE/Yaw4VnlBw4L18n8k0AB6NCw3SMrkyTTqkkEFg3r9lUsLctVu9Kq9cpylAwNuqph8aZOPa4wsvhWu0YLkrWbq2y6pef9R/hY7o741C9omRx1wPb1uBFdECcri32sY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+/im+Zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+/im+Zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14B9C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719114142;
	bh=i1gwIijV7X/bP1QlC9GpQEqxSlPbl9OIvj0cMytGeO8=;
	h=To:Subject:From:Date:From;
	b=X+/im+ZjwyVjaLAwcmsQJteSSN5sGA8MweYWnrGNH4H3M88VQkx/F2Db2XsKEShOI
	 rzDxQgMX9TzghcmMoj7SJco3Afv1BT1y88+yPheKnLISPOFjdoOznwiM/0eBkF1T0V
	 YCSPUqjiGNtYP+NbKlZBl61YQ/BSKwg/VoU1QKp/OXB5bvf1aCJIx6sWcadGr04sIN
	 QKROGnbUKGpeVGIHYYgCthiZH16YbYURdN1hTEWOvz8DpRCSRunJpGZjqaXYqQfCW7
	 fJNNqyi/dXq4BDQbcIk3I/fQVXSIIfz6MAGfJVX5OyrKCBkRFRgharXU9FD+8M1Rbp
	 swqTQyjMr0faQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC7BC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171911414282.2282.18031348922710540806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c365d6879f7bc7d32b9398399aa300832facec8926b7fd283bbe8fbac301aec5
Date: Sun, 23 Jun 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719114142
