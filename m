Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7F323A5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BF2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661491252;
	bh=a9DDrAzMKrQaRiadcM+3xTHLe54wp1s2VwHKlvcbcag=;
	h=To:Subject:From:Date:From;
	b=lkmOP92jbsuOT0ms1cAzB0t3mhmdbAefyZvwOQ1YsuRcFR/Iiqj7PCManiIkHqIui
	 a4azrzF9KsmS3gUJNs5DvfgKwtrlb4JPFG+gptLeXXT7mrICkldRbXJaey6VOYj+02
	 qcxNvFmGQLU/KB/r42uK+0LqsZ8RF5F2Am1uadSclc/jk0MZb2jLwbCZNg5e054Iq8
	 7ElA+33BVd7UxwSFWEL4gj+hExVNECI9wo31LFm/T2n43n2On7DXf2g6rHOJ3UCTPz
	 wxjHkfZEBF7A0d/zegA/JY/NkGT6HVsdix1uqHorZXjDdZKSx5ljaGG15OXGnUI/nR
	 HykYR3uNzVklw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A623ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 05:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149125233.21158.17180736640836359080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64136a96ec11375bae3fda5ea7b2ccb7d0c39d671350753b900e103163c0fa72
Date: Fri, 26 Aug 2022 05:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661491252
