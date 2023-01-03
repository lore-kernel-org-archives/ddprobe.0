Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C356AD21
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DD7C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672787487;
	bh=58TVe5x3HqKIoUT167yrOz7qdcj/L+/ROFLc9Tciyjs=;
	h=To:Subject:From:Date:From;
	b=Mt0shTi37kwXdFklwjbBeAkLE1wG9vC0NBEq9d90mZfJ2dWNGqK17aJguC6qiPWrC
	 rhenndKIR+eSOTiUIMLabzCKP656VGocPXFsQCv0R+li3jLRWOqAJauY+yC33p9KqF
	 XUovMwu5XGYypHJ7MlLlIWOVwzMAUPCCBm+JcGzLbyD2R8Wngy2OI8e7VAN/Tto/ML
	 Vw5/+L9XUARnPwStJJ7iI8PEMkkSwhpfl1T2gznfCnnkoCBe0GEuQum5lSwACZmXr0
	 IDOlI3W366PopN+x+xedQsgF8H0IWayeePdsPP79WOfdSUPWyJbAkqo6AkvTTUU+GK
	 gMC23WX0lVsnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A420C4708E
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167278748762.22466.7563297571093240353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98485f3a9f27456aa0e5a4ee3ee60e25a10edddad5288a7a0e188ffa920b5473
Date: Tue, 03 Jan 2023 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672787487
