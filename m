Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA51715A6
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C11C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671612087;
	bh=sHEzb5+NuwFK7OHGXxSpxa2oDOuM/ByXuEaQX1GcwKM=;
	h=To:Subject:From:Date:From;
	b=GprkIzAOFgYJRVGQCiokFBZk9jyUuQg9KILUoaigF0H+e6SJ+li9naH/ZNltfH92F
	 jPuVYgBhvBbRSf9NW5EzjqmepTtp4TeBMBQEu/7KRpyGEa4YkEBSnTzn1NP3UXZuB/
	 rwrZ72wsHDuSAR0AkcEjcL2Fi45uT5AfAj1aWtUgvoFwf3za3/CkV7YSnX55b+pfOb
	 Vn1m1VNdDmi5T+NvK/JXe6T2+c8RZXRnEFgqFxY5NXupjVGVPo2d/srvL9gyRkfynk
	 1sq6u/vGCidZZm3fbNSVDoaf5LDK/6l+KCQ/VeuDrc0HuQXeJi5tB2C6AhrE60dgt6
	 FS7ddV1U2lz3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68892C4167B
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 08:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167161208740.14236.9863919644679781782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3857571c5e15eb9de5a33d37c88ed2a54a88ad38214543af911700d0d684bb30
Date: Wed, 21 Dec 2022 08:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671612087
