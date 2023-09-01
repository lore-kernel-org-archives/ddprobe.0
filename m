Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CE210E3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 01:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4CA9C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 01:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693532048;
	bh=9QcSKgPL2xtfHlSdmNSa6MnkWHjtOUAWCibUc40U3Zo=;
	h=To:Subject:From:Date:From;
	b=hu0xzmj9o55uN4yAg6Zrv/HTx77OKiOnL7AnErRfoDiVz3v/T3lSQhD+mLrpf4z1g
	 pjiZRP7g/AV+s/Rao/X37vdwGUsWvGNQc64E6BRa3rklqoKV6uXmsyfr91YgBKMIZS
	 szvROJyfiJJRYKqa9Zn/wFa/CrUwwfGT2Ac8V4XrvRAaJaFbP8NGAD931SWO/zktZW
	 kjl6ojONZ+0VncKyHPRCCDyWjqiBdipeD1rTWPEHrk3C0qGM7TjMpkTM8v4dKzX/GD
	 TSj1WtNoazuA2RaK4ucQ3n5Hb3oijM9lsC1GQHPh5lJatVd8jpa+gs459I0JiOsRaV
	 DoATRbyhX+RIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADFFCA0FE1
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 01:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169353204869.26661.3161394181970116966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bb99d98ea03e4cd98dd3649766581198baf97a32595427c811a0daabad54bb9
Date: Fri, 01 Sep 2023 01:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693532048
