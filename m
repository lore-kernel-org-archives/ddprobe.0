Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6727013AC3
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEDD0C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688060588;
	bh=sNQkGyhUQHtVgnHVTQJSNJVA7nqs7XIJ/1DaM4mhi7w=;
	h=To:Subject:From:Date:From;
	b=qIQCSHy9yYqmKoSbq6BKVmyHLASmBVsDFI46vrABC7Spiz92qaro5gQ5OB0T1cwyp
	 CNyMaciCBSZeN5l04Yix+X0KexRFEHOArjRyFUdZ7w+bZEwjLmnYJ5s3d5xRuScEMy
	 ZBHCq3E/0BGGTNPckw0Vp4CoIVvXJtlTuriJHmkf1dDaMPtWUturALliLYfgz8xtAB
	 +ymyIBXILV80QspzTgzu4zdgS5CTkAURSxVk/oDsOatEFOOkq/cxoEzObu/9lqcjGD
	 ptaGlxNQdRKvVdmjNl8XI2TKO7/w5R89afr4RzFcOGZPAgX9hEYPsBqT7OuPFvlnGm
	 LQlSipufaZTVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A5BEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 17:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168806058871.8952.1819558427909205404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878496f544d659abcecd8be4f14b2e0f8f9f97fddfbf925ded525ce29ff8b5ae
Date: Thu, 29 Jun 2023 17:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688060588
