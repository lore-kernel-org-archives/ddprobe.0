Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD29D7E
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872F1C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669012254;
	bh=ksVOE5dBcHXi+h838SBdzSiWKsGrRWi6cn/ICYw+LeY=;
	h=To:Subject:From:Date:From;
	b=CR8+1vnw6s/pBSG/jCeNivx2cCqgd9o8iy9bn+IKRGxkD7yAe4YjUT7kepf6RzsIx
	 vOjgob8/FFKq+hvD/4VEPy9RRQpKjJWKg4j/KcPmEV714jvXA+a7gDTH7AlaeX3Upn
	 1M22YggWbFCMQ7JTztLsDtT712Ace+3fG/am15OciXb6sR0B8NM9boe1/j4lHaOcQy
	 wlLOCfhGNHos0/bHXrg7ZAYsnHwVBfaYot7GszBxUIJC7MqU1BGnYb7WRZUVqygyx+
	 kWOkpDNcOwcfZDS2an/NABQKysxr4VS+ukuutLjapglzsbrTDIqFYfmLxrQa5HqYP2
	 bROASFyiYkz1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C488C4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 06:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166901225443.19866.12839245694863433981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e35c5adb1fa73a9b63ca7a46165e0ae28c3982bc80fc6d34e2e19c8d77cb19
Date: Mon, 21 Nov 2022 06:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669012254
