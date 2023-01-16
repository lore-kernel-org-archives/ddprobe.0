Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE471FB4
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAD8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673876487;
	bh=xYIGDF0KAt7BbuTZu2sdpW86516lkNNdCS1WN31Pqvs=;
	h=To:Subject:From:Date:From;
	b=FNNB7lZNPRhM/V/jiShmRc4nr205IX/dUAK+nS1ChhmnCekjPUbIt+DoM6pV/lqmV
	 Q3nRvOY8KiTQCDf+JmMote7dupZcb1ZA/XWNnkyZ3qpCHPVkKJSa95a+jGAgrVlttD
	 k4NpvHFnRG3sP1Picn3gkuJGKF4w18qJFeZkG95eu4Mq6uLxGvfrqfhDf/E4wjBdZQ
	 3ffakkS9yLSdx6VlL+t61lhsdg39ZRA4XFH7R1TpDYPClw3jFlVol4Wfc636bOb7rG
	 Fvwk1zAjDBbwEtJK9KovMMYu4wZX/N1tg8sW6FXH+F2NBWIBj67gceKk0jeeZlIInt
	 EE/96gxHDly9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82211C46467
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 13:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167387648751.19519.10872745854111868567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8430df4209c4cd13c15033aad20fa634b5d00f1d01faeca8e98b9b3ffd9f18d0
Date: Mon, 16 Jan 2023 13:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673876487
