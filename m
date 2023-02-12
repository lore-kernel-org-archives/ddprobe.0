Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CBF290B
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5E99C433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676241845;
	bh=9YL1XBssbvuSP2YNBIbfSIwaU+b7vsRh3RGyhpImjGw=;
	h=To:Subject:From:Date:From;
	b=lONG1pi9xJaTaU1gP4NSxkBOqHHH67vpWtI8rklRIH1hsnsuGEsyHn7MJSkfkk4kx
	 DPIo+Zr1msYA6lgNvNoGSD80XNBBYnsIYFQM5xcXALX4u0VIHMdAiJbPXFDT1fmThM
	 2gtOOAnabMRJicY+jENXsY9TEWTRCiPGRxsbYnLQvvAf9Z2GO/anKNNIy1gdMp/mAE
	 ECnOIx0tKP99N/df9rPOy0zw7L8O+jgN/tgRlDo2uS3e9g7E+fmWNc8gSGVBok5Tq4
	 Bp+v/HzzwhRcIuyiBXttQnWIKIQzAV+caA9k2tEICOQqC0zrqmPTJ7kd3j+Y8U/h+b
	 xKWDRtqODMg1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D3DC05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 22:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167624184578.21512.8831959022774942510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23002e70021d17dd9c86364a8ee1300ee6b20aa9a013d074b51a6aa6816125f5
Date: Sun, 12 Feb 2023 22:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676241845
