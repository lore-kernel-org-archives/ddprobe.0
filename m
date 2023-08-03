Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6511D18AE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 11:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC2BC433C8
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 11:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691063528;
	bh=dwamc9iYQ7P5rRrYVqJrE95eCsI1tQwuVGhuaVUXWWg=;
	h=To:Subject:From:Date:From;
	b=hT0eN2kFSSeYjTI2UAmiTJl45SGiXCFVVQ3lX8y7lncGUa3PIniMmvDW8s/2SOj7R
	 Ei5bPReBHraoWLrrCnWwqAZpy/xwUOALe5OEJQepFQ50DgkDRhJciBkiha/IUEebyU
	 6XT6zLOz27a7Cq7qF5xf5lFXYnTMkBzSz/6qKF2LVVyoFf63aiTKokuvAXuFreOVS5
	 sVoKEt8ttsSbI+THSK8dX8Xz58O1yhVzkbJ3cnaiq4PrHgsgT1YjQxQ6m1PRpv3xQx
	 00Z25qEv21CSY/+M3ghMeRwfhHH5AlIJ9t9SJeaAe2hYukD/v6rd/I4D1+uzC2uv53
	 wiy18novesguQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEA5C001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 11:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169106352869.13808.14768016943052472602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a0d1e33b5f9f1c31b3f4facbf8a664bf5adc7bace860aa14f3499d993bf9d4c
Date: Thu, 03 Aug 2023 11:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691063528
