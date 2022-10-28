Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83282563
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF8FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666962654;
	bh=nT97SQqVbZGbrbY5Al99pTbsXPaD/zvehQzdwqqwH5k=;
	h=To:Subject:From:Date:From;
	b=lXCuOslMJIavdn6mbF2/+ivS85XJ2krV/ZPytBSYUNfdE2T2cLbM3FVrIWJUmswj0
	 RZo+Ws5rVs6yOzppbIZUBFcw0C3OzSRYlUn/3PvmKJFwj4S4aKEf7vTkQ7Qh7htB5u
	 PDuMhQx4+kWLbiMNeaW9RA5hP7MEZYmhBvt0K1Zw9MIg0X+5Vtl3+05ucBkIDC2l4u
	 z1IcxcI97ArIy/cz9Kf/cFAI1YXrMo0tD5pFj9ZNM8RXJEmc8ovPJZ9YhQ+Nbve9qu
	 ievEDoKB/+eGASOyV7y4mwJxht2p8kc+PPbmPCP5e3xDPn1B4QgvGaKSda0xR/oYWk
	 UK86XLsAGqzwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55769ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166696265434.22225.6640792504124804359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 549b3b0b45d5c434ca52368b1c3806541444147db9ad686089b0b1ccfcaa66aa
Date: Fri, 28 Oct 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666962654
