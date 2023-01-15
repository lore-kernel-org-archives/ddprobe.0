Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273D32FAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C1FC433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673806887;
	bh=SA5RXgSLUdvkCcNPnraAmUSY/F/OtEQa/z6JqEv60oc=;
	h=To:Subject:From:Date:From;
	b=rMM6TB+v8FialCQdq7ui5m9XzrbAivMB56b8c2GGb2ZZS0ZrrLUfzw2Z6XtZ0M91O
	 QymmiFxsNhsaaxV7M7+j3KDcozw+NgHGqELot9c+wRhYPa7LnpUDrvoalUZ89zZIRh
	 BN4WMfEGUClbcWqEig9F0ufxLTCnCPlrjtEfSN4lCwpEOPuQ8HHrWX7j821D+pffFj
	 7v1QaM32REdoRyy+sJENpAisgjr3jvZVIp6eOYLh2sn8KKGPdFxhti5NhAyEseVCgC
	 Ng1+dNWpA6ExOxHJpst2+OHP/X3Vse47sxAemTOgQiGCDIRyno5cLUn/64qKTG8cW9
	 PQD2Ebb2XmtUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B4C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167380688758.29136.17803706440104324917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f112d8fcd007498f93f72586b79a0a76e37f1bcacc3baf5cfe3f011f2ef8a11
Date: Sun, 15 Jan 2023 18:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673806887
