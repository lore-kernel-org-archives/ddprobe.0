Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2D294596C
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxHYyZl2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F41C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702829296;
	bh=NpUd3Lw6CYsXO1h81lXqpmxv1xgRyBYzQr+WXbJNMYA=;
	h=To:Subject:From:Date:From;
	b=bxHYyZl2wiCvpEmGkSMkBikrzGo3EDJzA817LCKJNUvR5Z/03vSn6YsGvpwiPue1Y
	 1M0ubcKxAp3E+iUZv12NEjeNzltPm32+eCsE7qXL1Ys6s92ply10z/8WYsdr0vsi8o
	 D5K12fDxUfTQBVjoYViiDLcaCL15iD8hu/1oouAVoWbRXxz4lInHnT9s6PBLHnpeFV
	 YkYBcKYuQDrp/pmaxJgeUHUdZFToYNtsCTBo/qZNZq9FJXQdoA1yRFF/a/SZDj2iyv
	 kxJsK5X0HWbtexeohgFKPdt/e/084X9lB2eZNqAxN6rdpHdkH9C0ytiDeTJ62OmxS2
	 DOc9+EXp3kWyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D96C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 17 Dec 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170282929636.17149.9057954602075085801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a98aea721865bd4eaa68f090b778018b315fb7f0ad24ff55caa962830fedd1
Date: Sun, 17 Dec 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702829296
