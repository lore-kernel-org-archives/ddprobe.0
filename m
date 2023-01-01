Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8F92F2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95233C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672588287;
	bh=3z/eUIaR4rISW9+w/cYt/VNT5e9czZaFP4nqi8/dw9Q=;
	h=To:Subject:From:Date:From;
	b=k5Vl1CN+oHslSdLATuRPPRlYhryjtLwyhVbVO2Tl0bKWI1ohr7dsCyo2L3NC1zrZ0
	 QIqZbFb7IDUo57sRlDgVLpz2V3yFFGBx77JL7moW4EqebHTOD7rYhw9fW/P7kDtGAQ
	 Q+hzuNaDYYxIK9MA08SwRL15yGcOrfiVQI2wSPNo0cuABoON4JdPaPzNpsYJ6y5lHO
	 pbyDa6ZARL+/1QPvtyF7sn7IY1Yzdbo+RzMPUp4v5wKP9hkDznE9HsGzwVZH3sxlCs
	 S9LFI1kQLGpDrq+d0ebYS6o16TCrTz7Y4NYFLTfin2JkXJ4NRXnT5xYVaAAPEpd8gM
	 mKWU52V0A+zow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7300BC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167258828742.13076.12559180315733247929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6d707f7f3d248f18bbb446f01f9c3dce7a25da0d332b4333b8b39aad206fdf
Date: Sun, 01 Jan 2023 15:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672588287
