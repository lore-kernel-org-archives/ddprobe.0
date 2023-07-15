Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6032F291D
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 19:31:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C93F5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 19:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689449468;
	bh=Gu1MTTgroq+OaqwVXD2sYsKGribQpDOZ7w4KQSjqiZc=;
	h=To:Subject:From:Date:From;
	b=I+ONGHH8PYOCTnCbu/mtswlmeZngC57/LzbAW5YrAjGpzPf8XOFfehJMLMnVMQ470
	 laoYVidaUgWsKJp/hrRcZydYzjum5nfGBTop3iHmqjKJVV0mUb0psfG1GI+RuayPsb
	 O6ErFJ+YnCZNRix/885bYQ2C03RXqTMnLxaA6LE8wFh3w4Wj2aviRTIILoa4jL4WcS
	 V2c1e5liBw8WxHsxML+86yyEYvuBwhA5Sr6z6zjgOVJ2Vld//vnjBC3rOmpUxl5vOf
	 BZusxmVM2Imzm1O+h8oROjDOn38iWS3Bnia/ESPLNu+9BLtqLJNFQP6x2l41XlU0DL
	 uG1QwAiP0ExXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8DDC0015E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 19:31:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168944946867.25873.3294723559634748554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 958a80fb77c83450c1b7771554d456ae386698bad8b56e4f6cd4acc649845c09
Date: Sat, 15 Jul 2023 19:31:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689449468
