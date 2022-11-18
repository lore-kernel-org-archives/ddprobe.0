Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 958C817C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 696F0C433D6
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668735654;
	bh=dfRuvL8QeOyPtR27Ej6BHMPF4lb+4Bplc3lQ0azihqY=;
	h=To:Subject:From:Date:From;
	b=PLLMNSewLwrkva0oQPq+q1JKU021nkKUPtyQBQP3W28MhVBtt8qX9Ds1gFpI/IVBI
	 Mcyn2HtxP78KsEr0PfsOXF2V7D0j9wq0tWNxvq2ZzQKTxJGxXAuu0BZP65YPUAnBHn
	 iA+wsEKep7DTMoWcL8iHt5PziIsekGOXWVmGVRIZexaQ19hcj21cN2hBx7VZBhCcgq
	 5b3Eck3zlLc6N/ADCcK2SZuukmYPOLpjXik8ngXz1PtccDyFDgs5jb+R7Dm8pMJ7NM
	 C2DyQs5jLXikzi/elO9G4cS5hapkJbuV9VHniCymwkivOjk5t8RGQt4JNJPiFyhp47
	 9Qocazt0eCp2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5179FC4332F
	for <ddprobe@lists.linux.dev>; Fri, 18 Nov 2022 01:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166873565432.32685.11330094222884287899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f088599bbfb0b0236cf1e12d824426959a7b44cd01f7d9cc40fb5ab33896ce3b
Date: Fri, 18 Nov 2022 01:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668735654
