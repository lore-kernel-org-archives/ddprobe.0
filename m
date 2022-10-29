Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B99B915CAB
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68925C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667036454;
	bh=hTUgvSOpWwmu6StV7KbltpKL+5i84KLu9IJjfSR9ryw=;
	h=To:Subject:From:Date:From;
	b=aPgksbc4jokIp/RSdZ/wu1Osw3xQbCttr51957HX00ZIeHR7ki8bQS2NKMxU3aMor
	 EbPUA1/I3BSjPfAJyTRBqCFsz/1XXfDRI84kkVCKdopnAYiM7r3l1IjNDIi5VfLskM
	 +N9FyLPuGlI/13cDYJtu+YoY8PUP9HIzTy6dk02rdsgwaLpfmfEzVyEsNm+zqGbdPT
	 K41hj7KOH5rCyiPEcbZnQSLra/T6KmzOv07xMSbCVBhfOegM2LIWk7ZDMR2twQ5gmQ
	 +JEHa9XJXydBhaIBQ3ccdtBeaZO13iHddJl1oNF8nQTXeUbLGhffASURzFoDRUBOuu
	 gDgLIBlF0/02A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 536BBC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 09:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703645433.11302.11012217535247390879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c677133ef7fb0041ef3e515866f4395b3c33c7dd343d435f8b44d325243b19c
Date: Sat, 29 Oct 2022 09:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667036454
