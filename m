Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5AE433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7853BC433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662040253;
	bh=gZ1AyKbn2xKpTWg4LjeUzdMLfHeWCZh3LafKZZXUoGc=;
	h=To:Subject:From:Date:From;
	b=fytnWatRTg+3SxsbBqp1nl1nKZt66SQ/q5lDHBOKTpISGN+f/g/zRQco5or2fKMnI
	 z/R/HKfA655P5NMoOGMI5xmLN2b7YgIjkVfu+u+KcVEzbMQckH3LrPU3Z1nI946Cyi
	 5R6czgJpUjTcnw2jlD1gPUxmjcwlwynDSec8aCVCw78O4nwm2jikR21h/CRC2T6gPC
	 TI2VLNDW4oDkt94cWtk7iSsjE+BhO1vhg/7kDR7fSHBtXT2hkJBs7iN162VmxJJJQW
	 0ctKFjMg4Hzjd8aJP5W7sQyGwbxgFpvKiPZNQT79ztaHQRSeP6BFods9GZtcBA7c8d
	 iqn0rkr6WT6fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6292DECAAD1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 13:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166204025339.13408.16082813319780171190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce35c10f3cc0b6de58df9b980180edfd055c87c715af5446f02ccb71c3dd808
Date: Thu, 01 Sep 2022 13:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662040253
