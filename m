Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67AF33DA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 763AEC433D6
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663075853;
	bh=9kfJMqfHnll3aR2Stu+9SBtqGKeNQgPVZo8B+LuZVbk=;
	h=To:Subject:From:Date:From;
	b=j4Ju/UQ2WvfmdOqPggZWk/G8v5Ij61Y3MUf36NPAgdNsL0Jb5Sprg31Z68+XWqBMA
	 7DO0SBqDFIwKDA1HxO0j976NcCgRKa0iur2BvdfOBso6/q0CqUJtPrm0UfCuUlkkg/
	 mxAQfk6AGdqARBxeDcpy4kHCgN4TL4iy78hN9GT1gxvf72t/G4w8ztWIWNINpaB0o7
	 KFplO0yGoggOByzehR+/YNEazN2igcC1UNdvE9Cc2AbltMcafxSdgTqaBvFq/wBNtc
	 +OGlng82uA6sEbNHeth4WK82kY8MsaJvdw5RdmdiuskT9FEmQvbk+GsrRqU3hjSLdz
	 T9Ym9aC2z5G1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C14FC6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307585336.29760.12560713202335264246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295c173bdb5170c782506b25f3e32cb209f1854260ca689bcffb5c1e5a0d7860
Date: Tue, 13 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663075853
