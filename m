Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80C3C14290
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 13:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A8E9C433D2
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 13:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685540046;
	bh=5sdde5WwWRa4e2WsJNQH3hB/lBdZmyzTaN0CGpTrT2w=;
	h=To:Subject:From:Date:From;
	b=J0MZB2p794cOMtY9S7Ph54Bbsa9QMMp78z9M1zybgsdU5TyYm4rd6a2gc9UAQ4HWk
	 TRbUa4KNpB3dCz2/2go5+OP8Uomou0FBpWQogLEcgaK76p2gjtg/zxTeA0V74QI3By
	 Zinh2nXUryaP6XKe5Ga7PyLTRWUfMNf4VmpJuLzDcdxFWnlWHOyNciZPuj37JPtyyA
	 ICxnxOtI344/N3WCugdwPbvZbGtMYFwEgF8r3pKZRM501aaV+TkapQpABvdfRSa5qy
	 eIosL7sJaw8u+EugEXDi/57k653HJNmaL+0yc5YSK5IR9JIF4OA568jQj1bR+VuxBa
	 jMmbmDTPKeagA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05473C77B73
	for <ddprobe@lists.linux.dev>; Wed, 31 May 2023 13:34:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168554004599.31078.5919722596063426813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a820342c4a1e12a1926e8a8469f5ed3fb47b112b2b820fd606c7a53d7714d83
Date: Wed, 31 May 2023 13:34:06 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685540045
