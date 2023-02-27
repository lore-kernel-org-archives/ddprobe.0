Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C24C640
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 04:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3A3C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 04:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677473765;
	bh=Qoe49qVEftr9S/MmV2FocrDnB0ZY1RhiOMTuHVPi5bE=;
	h=To:Subject:From:Date:From;
	b=gQ6juv0dd+/9Bx3JnENGcmInwLdnkp6IQDbxFQ3DBKVRcieQMEkM2x6PebIKApmJU
	 DM5UG4PZm1LC3xRy3eMvOxw0t/nDt+w2ZKNfV4J3HeP7hfFr+ARqLWL35WNEeZB5gN
	 YSMGASUO3jwwLAoBU2atGEa7npOAMQkCmTVuz3aF+zCURnxSRxiN03ckC+JcWM0Zy/
	 0kTg8dZ1C2Thu5lP8F+XMBcgNe5sT3rtIQd5GVZ6qV5JSgnCaCo/beN7JpjyfCvnVd
	 qGOAjoIC/5VWFEs+38l/G3n4VbIhvwX3+Op/OBQG3ZRdS383uJ7nNC6V5R/jWk5fPM
	 sMnRCILAu7CJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80EBC64ED8
	for <ddprobe@lists.linux.dev>; Mon, 27 Feb 2023 04:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167747376573.20604.11877130336469357386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437a2de55b6ad366cb600fc0f2d638528787cb6fc47b1ae5c0f8d4ab6ce10c22
Date: Mon, 27 Feb 2023 04:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677473765
