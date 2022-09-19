Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90E87C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 15:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D02C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 15:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663602653;
	bh=aHUUSW0qat3XwbrZaypKspk1dYzQmJjWJgsDTVccAEQ=;
	h=To:Subject:From:Date:From;
	b=aVWHPFui5r2M0rY1tqNY2J6MLclmSCmfG3Krk+imfzQ9u7jjdJ0LTATdBy28852W9
	 GslM4vsywLyZ1f78RG1+ynr3e1Yd3tTFkgXXoPrEj6ZJf2/pOFIhpIcbH1lZZh6y7a
	 3Cbd/yWLc23ZNkIZVrGpSm/zYpQ7akyT7+7s5oga8IAma35vko30zY81n6QVpZvaT6
	 fb/nWtn989R3TE6NHZ0JVDqoi1UOhOLLg0o7E+j1YrAXVX0daOYPWIElcc/PAnCN5F
	 AV9+DAje9iqMWku5PSdYRzeD/dPtqsVGeupeDS/T8O18W0zDJHjn9mQmTu4oEt7kan
	 Iw0hZD0xODhAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F804ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 15:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360265344.29076.14627853741268696760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5062efcad526085ac03cb771cd5bdfc98b08642b299857b7e165f57873f588ce
Date: Mon, 19 Sep 2022 15:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663602653
