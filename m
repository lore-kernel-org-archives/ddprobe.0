Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0A6749B
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 21:24:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C457FC433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 21:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693430648;
	bh=Fe/JvblCj1cNCiDyFZeMuH4b/6/GwCV+Zmmn+SOqifo=;
	h=To:Subject:From:Date:From;
	b=A5oKXcvrjpkCTWUxt9KIYAqGwsQ3OvULA0NtNzbyOptTgqRuhI0+HmcoC7vVSsao7
	 W8i266Kc0yHLHBW2DKpUyMJpVzuVCdp+vja6Wrl4+ysF4BW2WQVBK5N7THWtnsg+8k
	 c+4ED14SGP6ZuJk0T8Y1mj1AQbPZg1eKsloKT/AsZIYiO62Ica4U43PfOMs+ITZM4S
	 EVCZ+bGLMJ2ZnHOZ5P67+gtiODi2j5Qv3S0CmLIx1CL2RuOCDNwhECUwnRKoEf5btD
	 0LBbGebXQp/AZjWEozGge3GQFxcgTkN1n/lPtAmwp6zKLn8z1rJjtt0zOjjKB15rsz
	 ZZyWIoIRSCJSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9676C83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 21:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169343064868.31606.14668092439791694753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1f98b686ce2958574974add1c0c916e09dfbabeb30ab40f9724b96a39a2b9b
Date: Wed, 30 Aug 2023 21:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693430648
