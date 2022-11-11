Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D356E2582
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BF6DC433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668164454;
	bh=E3h51SS6cdTnHZ0cFqJUuWrZeVqkvsU3v7aj1/cE1Ns=;
	h=To:Subject:From:Date:From;
	b=nGofRMKeNFu9w/P0NpN49e4vJb0zzWAfEIC3N69P28Xe2iThLS7uxthC1fiI5O3tc
	 0D/TiUJ9NP9YTziFqyy+nKWcVx2edmSlFfsR4b8vdNZe25HEt+dhajOUqKRtP+3Gq7
	 /9ZGSljCy9UQ7lk3T2g6z6XrKDoWXRX4YgCUNq2pEQ8jVnppyegHoE+nGtYzVgcxL7
	 wNm0kGn7zw5FPmuzZCsD81x51pDv/zmQKaKtHY5pJ+u8Xgh8nflsZfWCtb57d54vc6
	 8GUJekiH501wRqxY0W6xFT9azkxSVGHi/29T+CzEn/mmQQD2K4y5ceTGg2+tDycM8m
	 EkQsp7GTMK2uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626A1C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166816445437.13656.1581290421674066617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0399c2f83caf120b920f30dc46123ffa2d17eb483a88644fa27557ebaacee43b
Date: Fri, 11 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668164454
