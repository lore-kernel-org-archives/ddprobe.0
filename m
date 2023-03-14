Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4174FA939
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEB1C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678825085;
	bh=FHmmEzDq6uxTpOek6CA6PL9QEUeF32FNCTDqhUNsFMo=;
	h=To:Subject:From:Date:From;
	b=raEMIEVwVTBhAW37QDr9rL3pEn0ZMmsYCGljJMoLLQDOxij71PTSBEgRDm+9Tzwr7
	 QFnDn7pM70Hlf2qEcV8G5dwaJ598OSoo+bCDvPYPcch72gh9Y25JpGaDQd67VRE2NV
	 sQqQuzznyL1MzVTZZwN4PJ+x0vJ3xfoItLLckUh6iEoxnGP3Dbxx8Ulk/+I3mlooKM
	 sizJjmxy0wSWGxQ/iPr+f1OMoistW3YlhH6ALSub+Uaf9nPlqUwK8XjBlajz+zNbVG
	 JTqdTBvcTioGI+7ZGcU1ZvB4JNDnTSHo5FLBzsWFbe80iZK24FPikkJn/J4aZey577
	 yw1tXiH1jThnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0D1C6FD1F
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 20:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167882508576.15050.11154105217890660236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10775b5e953e4b7f13f1ca2a3f771de32ec0d9a7ad20aa0a62e625fe9caa4e75
Date: Tue, 14 Mar 2023 20:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678825085
