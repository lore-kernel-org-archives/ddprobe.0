Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F15779CD
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788022834; cv=none; b=A9ZRWOipNv/FP/8C0o6LXmz7pXxVxJrBLtF1L4kcMIB5DNu3NcvCwmMOTAvBQT5XH8XRK5V27qK0XmGO4n6LVPr+bmdd9tldays/q3/PaRWIL9hpp+v0mbae0YsJg61cqqwIbr0INwL8+l0RyQDeu6KsVdFHISRlAksqEVaVjaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788022834; c=relaxed/simple;
	bh=KGt4KJ+ilU6YnNJHtP+VTaXkZtUbXN2PJsu5A7s25Uo=;
	h=To:Subject:From:Message-Id:Date; b=P/oBACj919egZKbUXnXwuXNmbI/L1k3z9hjS76+WPOUSSKGCe5f1Kdtd4mXY1nGONBUlsxavoUopqJm078qa5V355mz+1hNpOccxxb4AEgS7FFaXW19GQx0AbIEAXVw5i51q5Z107QwW1V8TdthlKu22P9G7EZSk0B76NoxBFIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ep/7khux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ep/7khux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF91FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788022833;
	bh=KGt4KJ+ilU6YnNJHtP+VTaXkZtUbXN2PJsu5A7s25Uo=;
	h=To:Subject:From:Date:From;
	b=Ep/7khuxgzordPvrXgUclV5xWx6y3C/WlM53f9W/etW2OniGTEnu49R6nUo+kmkwV
	 XDunCb8uRp9Ejr2r+WG9wQLf3pRXrN6PfIEEJYyhr+z4drB4suPwe3ZNanQ6vXLT7J
	 SPHuNO6h1f5ZA4kU3wvgChKBbIP5qWEO2ZVoz1jK4XtkVkjl2zcHh7uvTYhR00YaiA
	 Yq1ajKDrPt4BW0y5Ht3Gd6uYYOyRBbxHQKsuqxiwHwUimD2frX1NkGnXByRmeWbnYe
	 bR1oqgTITNAAxazvDPKI4KcB0ivKREVPJcjrUIAxTg3JXI3/qoMShH9T8+5cqlnZ29
	 tFJaWit6VLIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD50BC61DD9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178802283368.1695.13114888790901298449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b1ca702e317b412c4742584995ab9e5fb9184aea09817190be79ef2f313a6d0
Date: Sat, 29 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788022833
