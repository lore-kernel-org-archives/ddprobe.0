Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA77453A7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CAA2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663335053;
	bh=qQ4k9f2lMNAtLdH6fhCk1PTc8fZLbxXNL6iI/kpMzhQ=;
	h=To:Subject:From:Date:From;
	b=hAm3MIlFSv/FjaLhSqd5veFxOY4PSvAaKeaJoDLVBlD8rus+O8/QO5byW3joEnG/j
	 ++MCKjjVZsbF5rKKNOMyV0t9PMfUjh6veJehyYnIrCun8dAS6D+lVCRwLh3x/p8Qe1
	 /Cx5Q7jrIuEUL/R337dk1d8jxIS+37dTMo43cG3/nxc6EFZdZ67BpOiiEjQtrf3YoN
	 7OtvZzESFqbFcCirQ5pe0Jz3cuOKFF9Hv0Vs89c5COpvgtAbUoPHfNJtQWEPHaDEPA
	 bfftNVuYASChpuWJl1vSIIDK6TDkntFr68v+BYdg9K91WPJxHdKTL47J/fGciQNSqF
	 x5pLryQ/1IEzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 517E3C54EE9
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166333505332.2005.17644319104514593728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c20505b3599c9fea8d9f7341e2a08a50b5eac35f3f60754afe4ec7ab48569fc
Date: Fri, 16 Sep 2022 13:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663335053
