Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDBDD1363
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 680ECC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662168653;
	bh=P7GAYy0Ni575D8S5Oq60MGPneb1u6WPPRDgS/g2HplE=;
	h=To:Subject:From:Date:From;
	b=CKFTvI5Ga3ETE+Yo6VY/cUmoepVaMxctCkh1rtEbMwZIwqNrUgVN++bfLukoN/Nsx
	 gFIFMmxfu4flYUWizzNpWqxryuOKAJr7lejjm8PvZn54ozhftY1ghm75G7cjrsaqNi
	 ffmhnEvCbd8/yX5Yf+vAnC2XRV4AkA/tmrWRhvC+cC3yCSsE0d1QxduqNU/ayimMW4
	 kgUsQRfBQxvKkTVmVnnSyIhVjjCNrbwpbmmbZCdiurns3ih0xqNKAL6eY9QAnAecm8
	 0ECIKaGVSepGiNuy/TlYx14Df+YOZJOKx/0K5jveKPBfV7kBBKFTXa3j1AUoGKm1U5
	 DkrBUuf8S4uLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50BA5ECAAA1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166216865332.9899.8330374717438801065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052563c5a096c0f0808e086c3a311bdacf72030ad9beb0c8b9785a6278cb4e49
Date: Sat, 03 Sep 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662168653
