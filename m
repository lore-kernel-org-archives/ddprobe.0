Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57C84418
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4r3pxd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E896C433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701559096;
	bh=YZV8RPO8PJprXHdoUncpgAY7Kp6XlmKdIbQHDCNJFCA=;
	h=To:Subject:From:Date:From;
	b=A4r3pxd3mKyPYp8bMvpgqrI4VBoN2m9CMvpsUs9ZR8MaDejNoEVasc+zcxYUy6dVm
	 eQAmXyhiYfVEaFVA1uHFsEWu+A8HX8tujx3OUIvS85fuuvBJkV5kDxYArbEg72PVuy
	 j9m+QrHFFeFnRhon7SSNvNJS2+lDTWGXK1h/mNhVLHB3aKoK4JPPxYJgHz/41QcuLi
	 QpaJTAXTkcXgjAc9KxQCQyxzyiIpxCkP2qoaSVawxjeTlynsBXAp3bONLkNzbOTd3i
	 1bYcanQSdsJYRZPcyc6Fd3Hfx5HMu/3L3FNcZyY0XCsae14p9Dwv3m+WiC+jVHdrd7
	 cRWfrEFeAABHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 700E9C4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170155909641.10025.6154607955184759985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33ef8b441bd13f296438ea77b44b3006106a3bc6105fb3a12317e94fecb1d27e
Date: Sat, 02 Dec 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701559096
