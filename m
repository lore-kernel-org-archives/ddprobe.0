Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D52E3C3D
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H03hxT3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F93CC433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698497896;
	bh=v9BWAmk2Awv/0FexD6thtjFB2yR18/VpGN3EupSN5eM=;
	h=To:Subject:From:Date:From;
	b=H03hxT3DiI3yj1YblZ+MAN/bSrL6mlFqQPl359quqqaIN+OXYHUDtbynKvf4KPuC6
	 lmxV2UwXzgJiKeHv8fCtd729ZSLbr/NIxsXeJB4MSXxEtooWnd94MJD1u+z3GsHFD4
	 sChbU9Hs2Rqpupqu1TkjRXSPC+SfGzmMF/Z50/hutJT4GT0tMaWVgRwwmRK7jwPCdp
	 8lRNxLm4LTuekzbTNaOQ8eIMselLNIU9ke8xE0OzHx2jxm1GTgq0IsCwvBtRvdDPJ5
	 zdL70l6un24yr18WOTlAI7flaDhLVU9ai3dRPLe/rQ7JHKt7iLyknlGL+YMnFUlNEY
	 L4HU3rgVMlBIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62DA8C0032E
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169849789639.20592.4505975186124494800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdac4fce28b783b3e998739240f85edffc908d417dfb46168051a38809681c81
Date: Sat, 28 Oct 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698497896
