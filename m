Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9852EBF
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76699C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665922853;
	bh=Xysg22CFhN5QuFjYRioaeBv/nV4thRTsuQrXN827r/k=;
	h=To:Subject:From:Date:From;
	b=agCPDiO885TM8nXmFy6fxT/WG0cbPmKEsHZCNeKy0wryR5cWQyX3Q7CHKm6XlhQa/
	 3mv/g3JeN+py/L1ZJ61OvfeTDcJ9wVbfSV/ikrbd7Lu/3H8HRSReuBYvUp9XW6Jsnz
	 7jCH+ubZjMuo5iNgqPyKr/aXfYS50wsDth1bO1EcwBBJmCf7BzQWWPRvOrUEqq2fhY
	 TcHPXv5eNTmQ3ZI4x4/XCEyXLk+XtjLiMPi1wv0g33125vQrFaiX9OmpnTzZxn8+YL
	 g+zoU+DCDO1Tx242J4FSGyj8DSOlTVV3kcXzYl7rROp7NqycZjYHo97ophEN3xjk5E
	 pGEaEU+57q+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587C0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166592285333.3247.11737614441011259811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c657ba89195c63732f3c346b36afa91e1db4f2f185398bb7728d74342a3a52
Date: Sun, 16 Oct 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665922853
