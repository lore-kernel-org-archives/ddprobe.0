Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2F11FAB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C497C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670826087;
	bh=ANxdq1g3V8Hfrk0yYscHOLGfs/17X8egHa+oL9QxjKI=;
	h=To:Subject:From:Date:From;
	b=MXF0kVba9kkDIxiigShgjMWU4+r0RYE13zPBamISVVyjO2GstEB22vMFkEQW5LDVe
	 oxIyXmhBMVy8RkV8jyKRtq0E2j6rf70t7c5bXo0WF/K6fkvjAgdbMS4314ZlxdxPee
	 hC73O+CabDPpsW0R7h2+1H2I51MLppfs2WXT06J9UzGcq2iVOMIq9u/bczZrM/ByN/
	 6su1FmnZQJgaobYC0u6QoSqavC5SouVojX/Rusp3DS2TnHkOKrB0V8CKInP1mCuOOM
	 VxYbPiKmb/lXWEQc75zCRYsGba7ZM+an6FCII9llOrRqJ3TOmx0lHBWiJ3R/qJNC/l
	 ac2JJw4xMkMjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B7AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167082608739.16176.6161236200292298677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc59565625829900fdf1f0b8f131889ee96bbf358ce0e593d438c97a77f9596
Date: Mon, 12 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670826087
