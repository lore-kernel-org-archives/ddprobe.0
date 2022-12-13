Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34192579
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78845C433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670923287;
	bh=zYZ5ydDR4DeTAEKQ7s15jU+LUMQUg+8gW16KVPE45Oc=;
	h=To:Subject:From:Date:From;
	b=DV5UplsgOuWht6Zqa8Rvas8OSQjkHn4VIlZFcc/NvV4TzwcBtzVD9TCrBcIM8pm98
	 rtBdt6HTLeCDaLjigKX4ho4US2f6Pk5zVkKn66yX0AEw0XS7pQIBRyBFv5Bit9az5Z
	 9o4R3XH8Jt9Xqa7IxM3Ue0sppG3tbp9YfNeKfMT4vgeFGfjln4w9KBYfanW9DxjOVZ
	 FKmsUsalOvPjJvYLfP2bsZNTTDuXvatEnR5EOaPHAFQHqCUO/ioYtIGbYFYwcq9W+l
	 hv+ZcPMtT1pptA4V6q/GQSroV7/FTLVv2sHLmO3TmC0cnYwaOT6UqeygTuZBDfc8t3
	 lIEJnxuWbaZYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F55AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092328738.17410.10863514042255005225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb813566fcde9f4d4ecfbbf0f573f25ab372ee59fb5a7891fe454b2c407baef
Date: Tue, 13 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670923287
