Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 489F62563
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E631DC433D2
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675771685;
	bh=vWxTtnh+23DZVl1NzcDkkJtRZXxk4OYcnJaF4puf/xU=;
	h=To:Subject:From:Date:From;
	b=d+E6MKI7yNp+rb5pkNom5nqHIkDtMyxLabZ7qlC47q12zmCXm5RQCDaM07POE/CuT
	 97zh51V4y0pzjkFNdVMF10o9CBLwlr6uijfdlckZB8nwkrFiAtby4hQ9ZrJ7bd/UAd
	 V4Zl3SZVP3rJUrvgwSziLzQEd0cYSHsunhXwZ7DoytiyjX6aks9qGQFAvM67uN0/4q
	 HF+ALWHUi8xN4gA8EPVJ3hPvsCoXZcTD1hqTq0+dX48bX18+IP3G3Tm4K8uhu4CCST
	 QMb1PVV+5ZSSD8MbxGoysq7HQjW4hqwaHlpp5K4wT7M+3J1NsVIae87H0GMz3+kVgm
	 o/wLHfiC9kAtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE67C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 12:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167577168582.26640.18104433143735548475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248107a0c441ed6e4f04048c0ef44d5b36fd3bad9ff1f1891b4bd7f194a6c158
Date: Tue, 07 Feb 2023 12:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675771685
