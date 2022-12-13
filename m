Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D09062F2F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76957C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670933487;
	bh=V/GqNRFkEGYWa6e8x459Ms5z183Lu+51qKJHpRjHPxo=;
	h=To:Subject:From:Date:From;
	b=kiMbjehmqX8ryrmSL6ogET8p/p0BRPhCy9kQ7aDhuiRJvjwpCv51kS6JMBNsSbABt
	 AFWfW9x/qkTvsLsQK4HWfPV4zvjMlAvUpjtBW+wRmd3I0RSeccH7UoS97qGuQGagoW
	 9ixL0WCDkDwbZ1XbijfTJe2spvibIZGKQhjTfn29R3NaqmPGQAcuSyhrAJ79QQyIt9
	 WRAofDZAK2ugWCw1uKbqRk1ACMhFJKt1wHkvNCwZh6EPNcxoPGR4ku0KK9SIbRE7El
	 36ClOxMBQlmI6V4ln/+hHp0vfEScZDF39ytcUb+yU7EBU8GtUkVuIRVxHg7LaeOpeR
	 hduCw2UdDCgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 601AEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 12:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167093348738.15269.17368008404306354978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a86caa18c10ed430a938d62285cc51c5c384de348bf999c001c594c0e5bc015c
Date: Tue, 13 Dec 2022 12:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670933487
