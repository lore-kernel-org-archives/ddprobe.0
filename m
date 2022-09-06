Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE2517D1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A593C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662441653;
	bh=7kAyKHW7g6u4lIvK6+w4pk5Ke3wvTmm/qa4N9RQmYgI=;
	h=To:Subject:From:Date:From;
	b=J0Mn9yo1ww7xPiF1VVoeP+5nCMcozeKmEflQ9Pa4wYYN2jrD3ZWiENrSKIT8BpywZ
	 IB6Pw5cu+7yTd6d7/KBGc8t43tsBjGOeQ8aoZXiHz/kASicNmDurozhLMw01JIaMRv
	 Kbc6R2Nfujze/WuVE2MQZ8M8yLpSDrsQWFakrFWYXORUZhw/u6zAj58WFOX/qqcqJZ
	 SSZ8Tn3+AY5Q3/Y34OA2oZ6Enrg8eMaPPGVc/F7VJO0AX9yv7DkGTVzsnUnfUffDUw
	 nAZ+XMDGiR8s4ugmBFkqpMdp1owHU/4H1QNMAsKByKP7Ox3KpHEWLnAtcGC3Mj9D9p
	 fR+6ZMW+0hhXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5071FC38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166244165332.4242.12343220008885569412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d3cdbb57d72a4799fe9af92000a08cffab8e2366bbf2a550d4ba131d506395
Date: Tue, 06 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662441653
