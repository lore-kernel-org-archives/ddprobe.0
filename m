Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1338DD2E4
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuQ340AH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E226C433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703441896;
	bh=10feuHh2ZrCCU+Uzzc7LmMxPXZ17KOfk2GknSm+Qx1k=;
	h=To:Subject:From:Date:From;
	b=tuQ340AHd06DY7n3+0c82RdDW9C0qBpN7B4AqvYQGZ0HRnsEOHDsnruABBMitazYx
	 6e769FUUEy81nkPxBiltIy1Eg/i1rOqNRteMTcUjpODCoYR4u9IQNWJM1qhczFbWl8
	 TtNNNLV+rrKolneuuKwW7tjiPRvCEbDHu4adaWRnzG3gFzVASpGZLG0n/NRszHTacg
	 QmqcVA2ReN6nHwqDpIKwiklKyGN+mfmi/vdD8yWjDWABqcErbQx2seFM2HjTE/JYC0
	 j45WHAbNU2iHp6RCheTm6jMN9dBaU5i9l0+GtIGlGBoUZx2xA0oQpgUXUNYia3rfH4
	 8pUV8f4id+7/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 609ADC46CD3
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170344189638.12208.7448898776304403602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fba029e9e5c9bd6d26f7b3e31e57d58ab1742c5123e6fd9fa67ee12b5e1d16
Date: Sun, 24 Dec 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703441896
