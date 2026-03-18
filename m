Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104AD1D88AC
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773793494; cv=none; b=EjCtmBl0jQ9rWYvj12Sc6PdwlsD6y76BBJi9vMbd+q1wvttkX0M8l2NYmHGtdFC+a36z6XgnoxgRa5PVRMx2VvV58NRyS5tFgYNTdID5CuCek0WC2/fm9RseYY5sqpuJfyhC/J91AXxSHsNO4YTBo3z88t2FxWOvGL9Co3x3UFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773793494; c=relaxed/simple;
	bh=EZmwTxbAk2prgVLSVpK0Apydf/qpI4IyBBVjUOqi6+E=;
	h=To:Subject:From:Message-Id:Date; b=l6dRJXn5PDFgRUs4qOd+E2mpmixL4s5n8IDVPt/bJQe6EidRG0rYF0byFyQiP6eKRp72vIo3Uz3zApc7LrU4cQgNXV4ffpeLyUGVy5yujQ5xPutvMrfHXpSL1PmIzMHefUruMLkvnwWwPpn0DiPkLIOaRgrAWeGZbhraf4FIq9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA0fdb2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA0fdb2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CABC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773793493;
	bh=EZmwTxbAk2prgVLSVpK0Apydf/qpI4IyBBVjUOqi6+E=;
	h=To:Subject:From:Date:From;
	b=pA0fdb2LSMB8r20ZBhcD4x8cY3ABp8QKfWqc6VrOMKVnlEYnBd78st4Vdsud5MOhk
	 67xRRKN4+US+1W0TZnogoFl2i5TQ7QNlwTKBF+BtV7lvcMKKlO8T7BkrrRCrcuE6GS
	 nOsFW6Y4k04VlKXKExJBh0+vLMRUpB2k5lGXKrlB1B1lRIPCPGG9RTJadu+ACacNxP
	 VDP7+n8EL4J1gkoW22IIkDylaP/6J7RtOHNUAt/SEHrbE+Yf69rrc6zYQCJh8JHbSJ
	 I7mVBWHBt8+YUMgSeEyKIU90j9nWqjvEzDZKAZ16xPzwYjXnx52APXPP3uY1qdVAjn
	 doMq6/V2MBGYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F485FD8779
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379349357.28158.15980507408390762132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 773c6c68ec6817fa94a997a1297f072061dc6bf4be8e0a47279c7510af003704
Date: Wed, 18 Mar 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773793493
