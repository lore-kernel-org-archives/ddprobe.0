Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B62F13AD3F
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751831995; cv=none; b=h/RcoJT6Gp4TBXgpf8XTaUEOlqVnqoNiVL1ko2jYPNw+7Ih4Jb0PiXjiuUBOQJc6g4Q7ncFFrcXIL69FTXPIWLpfKdQhO1PiOkV0/t9fcBzPhc/HWYb2WdeQxw3W4MmBfITPAS3veDG+8qmF4SL0A+6+3fmQLZ9az+mOLOWDDJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751831995; c=relaxed/simple;
	bh=EPwCJgSnLeZjLEMJY/CQ0YId2Sv1SLIk4vTcYWC/lPw=;
	h=To:Subject:From:Message-Id:Date; b=IBgFkwZotKG7ZZ+kwTverhiaEaxCcOR6ksHYGEEuW79XM0hJPC1yBu55oWvcCG9IvYmkQ9o6udZx1hez4s7QsXeIG8bdkRRZ9LZDPDXHEmCiPo2A04Fb97EDAoRhZx2U6hjpsOmbG4stiX3zTFQXBawXiHFPD7rXAX5TldsSLbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eoDNR/vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eoDNR/vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A487AC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751831993;
	bh=EPwCJgSnLeZjLEMJY/CQ0YId2Sv1SLIk4vTcYWC/lPw=;
	h=To:Subject:From:Date:From;
	b=eoDNR/vrb44bcSDDvB+vPZ6611wNcha0SOT5JyHoeBPOgrDj0rok7VaolunfDVSEq
	 r9b2kk4l1wptZR2Sz1rzmx7GK1wQc+JNnimv4V5QprB9k71N8c+QvIExQKBCEm1zRz
	 /cY/dFany4fJnIKSeOPq9XGpnBxcDETn3xI3i9n3Imjc5lr5uvIop6QzydAdpB8MOO
	 O7wo6oONjxkcXgwUtR30iRr7CVWMy8jdh/Bn8NpADeqNzuOxCYUeP632K3l/sz5N2M
	 QNEWrsUwM7By4F8VPN9J7Si9IanBqU9pim+xwArYzBwAyMxPFu+cO0+GCtDy7Fwj9S
	 FmW+x3dDGkUgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916EAC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175183199357.29782.4100290993225036813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1390dc1ab4363e77dfae797b878da6305692656b803a63ea7ce48e6eaa317932
Date: Sun, 06 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751831993
