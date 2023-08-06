Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E8E4BE6A
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D49D2C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691364788;
	bh=DGahQLxhhOspXp/AAUqgln77MoTw8honlJIYDGaFIs0=;
	h=To:Subject:From:Date:From;
	b=JLq/P0i4YDvurGDGpzldHZAebQ0Wr9dcheI2tPVhij/iyCB/8mJMY5/eoestqvw9D
	 oiBjOC2PhGaRbs0yRrokXFHDPZ4FfbtLOwc/H3vIe1xovAy7u5Lv8ZFIofiSO//zkQ
	 yHpvydPfj+cZAZjE3ye/OpMvV6xqzXPrIT8IZPGSTExL78d/wnFXzjDS4GtLJ1VQkP
	 9I2s4k7FRpxVLqR4G7f+hhx1Da6i3UZrub5nQwWLZIcRARSJYxbtg9ygrERJJ4jW+Y
	 6beLcKibOG3DrrNWR/Y5Ytz33rVyd2GoDzlCP3hRKZctZ24RbDPXG3ordrNd/YxpzW
	 QgxlBXsMQZFxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2A1BC001B0
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 23:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169136478870.27057.6104683608433536331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba42a19d2923c30ae7ae3dfa11dbba74010d3839c6119d51b7b704f7a01c44a
Date: Sun, 06 Aug 2023 23:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691364788
