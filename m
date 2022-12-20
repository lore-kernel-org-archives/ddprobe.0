Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D708110E6
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84BF8C433EF
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671498087;
	bh=Pz/HC5Zd3+irzkDkONUxnkyzin6GlNdhX45oBRcAl50=;
	h=To:Subject:From:Date:From;
	b=PJFFhGjwOUQZOz2K6sVnZ/ruBi41fMa/kIGZ+5b5lVTWsLOpcUw1kM2xAI71ZiGjX
	 PkoEXZ+jkuA/ndhTMJIkkCYGo2jISAB+cQmxR3/BxXCDEVTONqf8IKWVXNoJhIPuVN
	 bQM9PPbNcnCzGnXhUUvcujcDuLYcxC+NAmCXMCRLAJMDn8RWVEYbBZ/mPUsyI1QSuL
	 D1+v3D2MZ1+oxU1ISUbALqX9UH6oCjLVUJxNNjRNjTwFmVwb3DHz9J4FyYZeIlnYie
	 Wa8mtLfg+raAwLqlqJVwY/HV8k057VkQYCfCuSqx/It9J29ft8V5dJDpDlQ3M//cEP
	 d1pxPTVyl0muw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6439EC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 01:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167149808740.7237.5768441266279315199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bc8770cbc709144f1157df0381fddaab346cedd87814da2b885a92a36f2942
Date: Tue, 20 Dec 2022 01:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671498087
