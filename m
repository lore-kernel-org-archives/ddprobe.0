Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C33A8460
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 14:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E99DBC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 14:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681742285;
	bh=XJTa5+D+bytn7665KlvoU0qn3pky6r2psLyMOIdEX6A=;
	h=To:Subject:From:Date:From;
	b=Xx7sVRCLBi2NOulazKOSyNbRZzteZtF7xWSv5u/4uZ7iBdxxyyX8ee7Di+kYEUdcI
	 rEHmko/yN3tQZN3SPpDA9CPK5xueQ3WQjOb99mT041sqOAHWdU1383BSx5X+rStRnL
	 QN5srYeFq4ed5WVjCR7cLwUU2oPs7uaWDTpzzwHdRvlmB6LS0X/CugOMBCJeXLKjpQ
	 QSO3UVrkRc+LlHVwoXLAaHFuZ5DRaHAto8orlgbG6YnlS56obgw5who7N5DaTViE/Y
	 gWSX+OA2hSdWJOBXkydkcaiE7p1ZW2nyJf/CNdARzKGOeFQHuPiKBS0EUKl6ebe30a
	 flVNuibUpcr5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F2EC77B76
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 14:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168174228580.16356.12165253716333403765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fce1482dec6278300bd0998afaff0092397cc23a1d5b6846bc49e91e4288a21
Date: Mon, 17 Apr 2023 14:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681742285
