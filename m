Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E917A2F36
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 17:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9103FC433D6
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 17:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666546253;
	bh=CBfsH4cPjMY8GT2vd5SfC3jI27FF07E7ruzc6btJ07M=;
	h=To:Subject:From:Date:From;
	b=GomG4ZHAZ+KOFUPQ9EsbBUYmcm5DvHsy2W018DgEADyZ4RepjQnN9A3pReYmUtlgM
	 oSp4kEizgRQ+XSg1vFVy4BClirtbUYrp4T6gnWSLIDXW+LYFAC3K34EG2OG5N9UF5j
	 TxMCibmg/MczXXa8uvJyygOmEldr3zkqIWIM5w7lZHpoSyYB6ETVDNbpYrgnXG9a53
	 keU8rKVWeUabPiWehdh1oziy4VTeS5JNB4bHofr+OZT/bIuPow8HPKEvIUjqT90Jj5
	 me8wiWI8DQRTKZQffmCbS4z4VTDKzbAkI36UkseGdBt/KQy1fSPj9JKnsx4fuOf5qL
	 E2tMU9MoibY7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB20C3A59D
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 17:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166654625343.12646.10038452134351999096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04161ae73e2e3acff67358db0f3339078e3c2ca34020a79a3098d04dd463048b
Date: Sun, 23 Oct 2022 17:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666546253
