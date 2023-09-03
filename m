Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE72BA31
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC334C433C7
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693782248;
	bh=aZBBY6kLzPEPw+LKuZDwMWptmvZHKX4Q4D5bcjA/cys=;
	h=To:Subject:From:Date:From;
	b=OqkdHt7zBgxj6322zKf9WIA6Xu1HqBijo5aeVTHXABqtcAvE2BfM2r4Jt71h07eiT
	 QiBLF0FXDOyIpOClnj5rZdVPhqReaK2IsJ15f+Y9ohcIoaXA5T0WT+vJMO7I/mJIrE
	 JyBGdSSwn4vHK0kaOjHB2sghE7flV+Caqcv4few3bTIO9UDrxGVtjDqNvX+FAYIDPY
	 /4BT550MFNCrK/HudQT5nPGWlwzeVwKn2gbXel79KS+6kR4ic08mBUVyjqjiovQk/o
	 kyH3FNVQ9M2Jha/Sbcs7F0l2FK2LVUudbrxFxkpqNg5stg+H5sMYPUR9oDibj16bxY
	 el1lQDernlHzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7337C83F2D
	for <ddprobe@lists.linux.dev>; Sun,  3 Sep 2023 23:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169378224866.3978.3099783802858002613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b6a7d38d965ff509c8714a0fdfa48f6b490456bda19e9b2b74eac8989a93ac
Date: Sun, 03 Sep 2023 23:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693782248
