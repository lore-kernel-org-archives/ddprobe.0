Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2545E7493
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5ZIujZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87B3AC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701538696;
	bh=l/4vvuVZxy+IhrByBfgTFRGdjnvLOjFtF3DwOsW43Ec=;
	h=To:Subject:From:Date:From;
	b=d5ZIujZrZHXqJT3gdJGDanWb2CtJdFxyAxYFebU3r1NVc/kJ+ExVRdwMnKMcWVdDh
	 CVSmSH3WxQyrxrYlUj2ga0RznyKgrMqlGMzeot0semfsUQvHlB6nAFMx7Alf+3k+VV
	 Y2+/URZKbbTMp8ew3lueNLP8c5Z7lRQ/6m5ogSMDK4myExfCq6dbGaNjtlwCFdmJkB
	 EctBl5mTv5J0JnFpeDhT+HLxiVNMmsgO2Cf3DpUj6GohFmLN8mr0u4SzgCDZ9KDFUy
	 zm3BMYTuUuh8Z0Z2tYv1IMGl9/eOzGEl9xDaAtFsEmX2mxae5iizkEmXJ89jRo22gw
	 IX9t65bLzqRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B474C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170153869639.1444.14413009319722148232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a70db68c97297cc7f7e7f293f3c6abcbc702cd7fb5c0e3d16fbf7a4434bfa0
Date: Sat, 02 Dec 2023 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701538696
