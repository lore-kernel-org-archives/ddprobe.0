Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B828C15
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 16:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7AF9C433D2
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 16:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682008025;
	bh=NJJg6C0gLfBImbKJKGH4GugtvoWA2ktoBKhQzeIvwLQ=;
	h=To:Subject:From:Date:From;
	b=PVc67/U3RGcnr4AqkikDshOXcegawukNKX2eTXhQOiAKo1S+8cbmzXOfmkftHg+L4
	 auSa4xPx7r1HH/sprnt1H9KncYDheqRIlbDMpmh4vKRvfaK++9amJ8kdJZvNOw1dVl
	 nRgpX/ayNZLw5le0pOcPWXLqOG6dZSW8xooJFSQp6B8XAzE04UQiVwbfbdtC0AT2Tn
	 i7joWZDaQdzbs3Ug/sQm/oFUv8XmE6dxKE5nMW3SIFWaLONs/MgA2aPptZw1OFZN7b
	 Ul33EytF8novI85yu3NBRRUaFXgi5i9qKzpo/Wmw/S3+DoYy26FJG6tmtK0Lb+wuiC
	 WAZlALVLsqM9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85E9C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 16:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168200802580.13757.10428772645338700784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91106d98e321d5805896e419e1c698204816b570c5288d0b19818954689b8fe2
Date: Thu, 20 Apr 2023 16:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682008025
