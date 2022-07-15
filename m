Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246737A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 09:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657878412;
	h=To:Subject:From:Message-Id:Date;
	bh=dfsuf17p6wGei8TGFuH1uVV8udFBTUz01cxIUgLWCb8=;
	b=IM9IvjjcMPk7Uc8UIRKuPxGrto2UDxMUCG1YChzbPGHDt9Mf3uj9U0TFzREYdZVA
	CIx2nw8ecfymXmIi7K7EpVRk7R2pPQx/kWTx0aHFQM005un8rRhzSCPdr/rWfSw8RJ9
	srjoSGB/auKD40x2fnimuAdbWsywn8SyoRxVcE3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657878412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dfsuf17p6wGei8TGFuH1uVV8udFBTUz01cxIUgLWCb8=;
	b=IPrjQ1+UNlc2r0mqulS16PIDVbvA7yrHW16c5ERRJAT9ehLiYICPaM2I1pEZ8Uqt
	gnLCnD/D44EZIEMBz0PEekDUpYu3OuGvcuqZozdo/cLj62xbaRupALZeyBcGMcl5iT1
	M7PtTEgosMsli9s6dmJDKmN5cXV84UeX+cDpwK10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820140fc02-b5d6df9d-3e1f-4ec3-a211-50998e4ca19c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e443622946acfe810cc2ee92d21a3bb13255776ff9f2ab6335841e1e3d96c538
Date: Fri, 15 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657878412
