Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B28D87B
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68FDBC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 12:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670071254;
	bh=A4SqUHBhAbfy9EdHPrXzPbTZkBQkfQ4eU52PnxZAxG4=;
	h=To:Subject:From:Date:From;
	b=GW9QquGgBlnv7nf8Z9DYRY2zyOCRtsvqySkfDgNFsJewd990mRwhuWO96Mz5mJVEE
	 dhTk7ViM9+eajv5vuOLqk8FlOIXZ3opCsI1EN+G8fzN2ZHQ62PE00llgbjIvIFzfar
	 EjyRF4lwSY8xOtohbNPP+typONQCtzeQ4tHXoS2RU4FkdgBgcSNqF1Ac4vB2WXzrsb
	 28j5WBsuWD2Ctf5iJCcsB3L9PlxCEPBT4iEXQRVcMHxXyJlTOthtyhBiIQQuXucDoa
	 FkbMQRr77ACQTawYzou+nHe1GCcSvyNKKxgcuacvYGcDyyjfaRQIQ0Lf6Hj80jlXcr
	 xXUbexuS/yucg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE29C352A1
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 12:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167007125431.27655.4849300600769625182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 477ad3f641461cfe5f1a7ec049d77130f78c6d5542fff62958b9dbbeaa349c3a
Date: Sat, 03 Dec 2022 12:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670071254
