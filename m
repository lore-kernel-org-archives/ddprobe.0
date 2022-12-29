Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9199136F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 85123C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672293687;
	bh=VufIbji1FidATiTKpNTtIQAeGug3pdutGZsjA8yHXQs=;
	h=To:Subject:From:Date:From;
	b=Bl9aVhl5tlqlVVOQ6rlcYZJZ59J6P5XgXwQnSchmMnemDoMIxhFYaM4ZyIML5/5kK
	 50Bv9IkbBQW3eYzHganYdjnjK7uSPy3ts2Hdd1FH1PxQMgfyR6WAKwiS9Ils2C45UD
	 15edA+cwWN0Uexh0wl83PwDk3YXVgKPUoB8uiLEQMo8w6eXonhz5s+D7ZETNTdZTBl
	 1IbcNI8K/KNkWOXAXZxttHN3mIUxAJBJ87YDOZSQ/F+qrtx51S8e1HZBNfntTvpKbg
	 TWbDx98JYB4WFtfe9BnHTeRMKuG625KeAefj0oTV4hh1f0r3MkTf75pc13N5HDEimC
	 Ip8bPHcF2/7VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 657A2C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167229368738.2126.786915574473888865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62367ad093b835dc4a0817640d3c746921f0efddea42b198ecc0d964c4e68140
Date: Thu, 29 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672293687
