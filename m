Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB8330C368
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771866894; cv=none; b=NkUYG/VZq37S4cUF40f+TeHQRCkLiXcKsO3aTXQ9OMFT0ShczARBF0NTPxWpzhsop0yHJPmZhrUgNvPeQujxTbPRG+RLvsQp6Q3TiX9QjP1YMSGHkGQBm4kEaDnYwl2oXsYGqxaXSAA2kbNeNRlR3l9/bx7cZ7p1xBKASTR5Ddk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771866894; c=relaxed/simple;
	bh=qjFTvJV1R6UwQiUtCZTSGQgnMIkGPWFScZ7562UWCe8=;
	h=To:Subject:From:Message-Id:Date; b=VFr+q9P+iPaD6vw3/wPuY8IBMWoGv2eyo7AF6jdsvGV7+Y+InpWuDmkfuIrQL+cj645YOZbr3/6Tdf0sgVE2+9hWJJ1uDQFfTptIAFHAPQqGDmQm/Vg58vxQ9fKOaZRm05y9BtdAl36cyKK7V40LawxD5XFsXGYT3oZKHGOCipY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o0+MuH4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o0+MuH4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A983AC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771866893;
	bh=qjFTvJV1R6UwQiUtCZTSGQgnMIkGPWFScZ7562UWCe8=;
	h=To:Subject:From:Date:From;
	b=o0+MuH4VdZvZJT2+2LSMeyRYcOoiqBsp/rXC2k6G0NhZTM0lqCJXcOhGEkWcvyx0S
	 OSmyNTuMExOuapsBtm6rEWtx+WmwdQGDYz5l0M819/QZRQtoBt5tpIzsBS7TQbLKQs
	 1i3EztS1hUjan+qW0xJTUdYk5b5O1CoJAx1AvPunlApk4R3fhLSeXtDDDXNNmscFp6
	 /gP0fmkSnCXuWW45oSoWxcfZ0CDcZaAC+AlNaWqXlYU41fZTch0oKCqYjYwEnzVW9f
	 RDfzVoCfh7VKPZQAv1/E2Dbgom/7fb7PYaY5G0yx4xmCx7/h/alsbaMd/yFQ4RJ2+X
	 pwEJGynPgjycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D98EC110C
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186689358.27441.8058952080923970691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904004a46e5c36ee6d312adc8955222cdce15a764a1d4564d1bf54356a4f6120
Date: Mon, 23 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771866893
