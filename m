Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ABAE6117
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE227C433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686908348;
	bh=hWe7tDZHEpP+AAVGdZiiXSaAOSCtnyT0Wo3Myjhe9rI=;
	h=To:Subject:From:Date:From;
	b=LEkWuaKYPBZGlUl9AOoZiA82B/pNFr+YxAFWk5c3qdMqSegKusVk0Iv+If5K49dRz
	 ZdI0gZ8j/gomXGC1Iwf9Ou2dCipnBQlz/kAQoaHvXt/8+QBpOdd3jNRDpkUZ+XAmLr
	 rK/UWpWbVrxrv5tsP+6S89X1As4Ylk4vTELN6P22RZ+OFtS+4DBeePMju9mhHyL8/I
	 aeN3VNNeG8QYviVxhpheKL3gpVktDsqhErzOh5gb7l2S0ZCcmtWtD5bghefCNbBPtB
	 +xIC9mM3L2fRP/TD2pqDoYw5vWMe1rVnGHmr2JZRhbdui9HN3ODDEiOah9F3hJE97a
	 L0Xkghw7wmLCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF6E1EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 09:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168690834877.9724.8069109663419354505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e846920db3779a3abfee86c6c92f8d741d1fcb90f185abfcae8307f088f1431
Date: Fri, 16 Jun 2023 09:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686908348
