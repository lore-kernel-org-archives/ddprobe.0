Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29388B3E
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD5DC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663913453;
	bh=BEovKt3rw4R10zPlqpmB9LYYNtiX4aeoQGmEQCHvnYk=;
	h=To:Subject:From:Date:From;
	b=tQN4EDld7mwSGfB9an3+VxzyYr4jLyehj2Yop5Uk0jK9FsF6P+4MBJemqtqXoLXhu
	 5t4bDiCS3m/e5dOiG/b1e8VM3Jibwnp//PXUlEvXozT5dVlEbPhes/abqtm36jDaVZ
	 I2BVk60LERv8DA+vJ4YchHrdp54Y5pS2Gq3NquRtcxYlmn66oZjUcNAymdGFUwSlAQ
	 pjOPdiX29aple6u4PBh1A1DQIBIIsXS+kN1uWQBlm8ibtcoBqjbD2cdQI889Ay4ymu
	 9RfjdZmaTQDpmwRoavwTPlzRKtduNhOkRyzGOfwJXx5oASbXD1toUzeOkhD7NYcuMg
	 Otex9c3T22RDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B88C6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 06:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166391345333.31192.7229245534628249950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16d2ade4ea68af05b56a3f230fd9a1acc8cf7e0c7dac011bff2e1bee38d5083
Date: Fri, 23 Sep 2022 06:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663913453
