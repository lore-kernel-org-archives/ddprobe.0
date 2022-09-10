Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF245A8E
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73CA5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662848453;
	bh=HVTF11kddxEU1TGLwkI2iSDRBRs34g+GA9yJN0SdKKI=;
	h=To:Subject:From:Date:From;
	b=Y0xKBOGToTKV4jMAdxbbbuKyQb9BMcxrWWb9JwWhpEBDLbxnnXh0DigbVmcM9nMgn
	 CkMdO6PctyR1XUxdD4HtQoWwDfLuOKOfx6bGCSDdiuEBpc9YO3u+F2gUbpV0bWGdg9
	 +DOmW1dZzzHwJQ18dOcVYmcyv0dtfSnZ+4Rcg6UOC1qmy2RVJBUjmaOQAHL8lrdqY/
	 7w4smU/htmVNZA96M/chCSUfOD0iitOWEjhzgqnOTsqSp7DKL2z/HJL8dwZkFvmMfM
	 XP8KvvPxFl6KC5s9nWbEvFP/3x5K8gv81i8qSioo/bU3bKwldUpFZJR+98TYPgTdoA
	 jQHggzw8VQa+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57A43ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284845333.18990.7210405520364921745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2197bc248df7dbf26ba79c1af54a9fffeee8dcf8a68bad11b5e6b993fe8ad07
Date: Sat, 10 Sep 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662848453
