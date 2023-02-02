Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4703F7E
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 04:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20D7C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 04:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675310765;
	bh=oejxaovOtOTIPRNRHBIedc4+GNLtMCnaEEDm9AhraYg=;
	h=To:Subject:From:Date:From;
	b=qPm3C1yQhZk19vi1vSYHrABvY1+7eD4ImE16X2RoKMi2zWeZnAqorHdS9W778Dd9/
	 W0dTXGQkpF7RtcXBXr9jhJkrrjqCCDUK0N5WHt2eNd/R6gPojrb8+91NWUe6dkwZwL
	 0vSP3goT/I29ibp803HcvQ5aycKOAIrNgJZtbEPcv4edJXTDAis6ljgAAp+UlZa2Ec
	 Mt3SdIztx7sdR3nRF5WVoO+/81UFGGWgdgQV0GCIlX6WFZY9QOFI8KMH9DDr1g5w8W
	 7xbVDUwfIH29dPFm8Ky3x0l6TYCT9/cYT5TqosMa1GodfqpHp3HZaQC8eyAFF+8wqN
	 ed45nLXM7fyYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5731C05027
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 04:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167531076575.581.14873377314056123459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4705755594a4fddd3b37061a0720ea4a357e310730b9c929513d70d2269c090a
Date: Thu, 02 Feb 2023 04:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675310765
