Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1F91374
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 877A2C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670680287;
	bh=ChcoHJfHulcgPQhSQhZQS41HiK+k5cf/s+BKXh3jqhQ=;
	h=To:Subject:From:Date:From;
	b=COuUVmqxo2KDZIra/99CqM8Li3TQc3RlPjMDrzoQu6K8yiMOmKXUgRvA5X2pnu0x4
	 NHOjyUpdLwM0/kBT1YsNnJYuFlt9Cuj5LXCIo+wdt9Sx2VNyAtAXTBTpBZmfTxnwA9
	 FQMrUi8YR4MVnDLCWEgbxLUQYJ1kj3U5qKRM4lh3a0vbnKpa863dIWOh6YLF13BvJY
	 dbIaWoV2U4WH6C9WCSmbRMUu/x7a63s6mEcF5JMqLsP08ySequoxORKDlgCN7ZqgqS
	 mHqFx7nOHbLE6FcXrrvaFh0LY8MWx0RDnF7MVefCCDAeefesFT0Bb+GKBVzFiGHsLi
	 UpSWYy+iFiizA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A8E5C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 13:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167068028740.24877.17708667918843470825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5aeea0717d207ddb403cdbdbc37c28b4e24ae033d099468bb9d5f8c245ef2dc
Date: Sat, 10 Dec 2022 13:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670680287
