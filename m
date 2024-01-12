Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BBA1B27B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grhmnPNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 823EEC433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705031896;
	bh=tis2JzcinKql2Z6FEVGURpkrxK1o2yPMNDNI79/JvPY=;
	h=To:Subject:From:Date:From;
	b=grhmnPNGh2CWMTC/+hjVm2hS6Sa929O8c9bSo5G6M6BRGXGCnyygice8hjX0Dsv68
	 /NS7326xYGjdGN9TIqvk4Fjv7sFPgZ3KgUyFPvEiXU9a30yyr6uMp/LNVy+n4EwauA
	 qtext994tcbT+4x1qobYeaH7EZVXOFz3+lxT+AmxaXDIFnoChMQERj1dbWv7GyFoGS
	 G43X6LVX9/tFf4yqG46F1+UKGcX78arBNA9DqY09is51Q+l0JNhr8Z3n/6yclx/PNV
	 t7hmYCblaPCqeg4k0JUiy+FCjxJZBR7TaTCgSFepNlJWZDkDWFSKRVuDKzbWNQLXja
	 B0iNjvp92jnPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68F1AC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170503189642.9848.5050144378039702128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2113383815951dcdb5694e059e3ab19a0354595d15bb55259fe08306454b62d9
Date: Fri, 12 Jan 2024 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705031896
