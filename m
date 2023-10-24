Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9E66FD5
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bs77qJb0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BC07C433C7
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698121096;
	bh=RWr5z0uioju7od3Vop9nLqWpIVJAIvplSXi6a5U7qEA=;
	h=To:Subject:From:Date:From;
	b=bs77qJb0VbmHhUBpDDhPLVwklTk8QmzDJ9h49nqqlxRSP1L41QY9lhnq4E8+pC0iL
	 n2OAWq1NNLHgZAKWcMex7ZG2N5L6dTV4yJBD6n35kVwNd/739Qsug4Xsl11E6B94BT
	 T47FwLT1lN8Jt5LmcqpHKt+SLVd7KuXnDjBWxnAUCCRN1PbhYAsDiJR2a7vLoRcmLI
	 CFnzw3ugY6BL31LT17rksp7OTcH5mZY0zgIWiqbjogu54ErzdSi9ory1FwrR7xrxsE
	 I6CYlMXSGV0ChVp02fhtSI4rJoOYU8wf6LEvYw4tzXCJvUFrndQSHC81o8Hm45K6BX
	 Om4BDjriXwWUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 756D7C00A8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Oct 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169812109642.23939.15221588850083882816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d03610e5a0f1b04e3b04271b59d3dd256b15cc7ee535e0aeeb009579c766ec
Date: Tue, 24 Oct 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698121096
