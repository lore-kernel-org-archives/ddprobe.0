Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF5C17D0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87944C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673413287;
	bh=EQGUd0aSHUk0J8yvbAC8S/vdC9NiIemW2TST11lUavE=;
	h=To:Subject:From:Date:From;
	b=KS4psZ+u2fuYm/URgzsJ0w20iDOVlb35RAP27LLAiN8w8F7lL5OU9pz2yXMKvFzkF
	 EXLAfox15qQOPRTDDoEX9kEsi3rtShQTTK8ta15vWwbal1QBEEzgVjADbECexI3j4i
	 sjzcs6dFOOtB+tScWlbN6lNGo/57DYMFq1m71ktBVglNOfw7ryAZKtGpImE4oLTdby
	 5Zp1xytLTdh75UHe2xpgyPIymHVlKLcsXDrOZXtt1RfSsDpYhURB7AH30ivlssBlot
	 q/17/9E4Ab9/xXa/yui2nBFEfbVDjAfBUZ+aSWHG3Vh++vZSuiJ3LAASHBeRj6qJ0Q
	 8jdySA525A5XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CCFBC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 05:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167341328743.2735.6360675346848235118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6cdedfe66c10aed080eddf5cc22c08d3ff6c3d93f05ad0830b1c389c68789e5
Date: Wed, 11 Jan 2023 05:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673413287
