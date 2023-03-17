Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A2162D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33FDC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679026805;
	bh=len4DtdOE9Ty2Jf+y9nAhhNOCU3xcgASnmfk/N9NsHM=;
	h=To:Subject:From:Date:From;
	b=NWhprNnOXWM3bBj0l5OB0ScFmIrKRpQ4E772Ezzo0UdBdQ8z8YeTaZF4hjLpPpwft
	 6fWOM/UshjecVXVztLKfO2W2ttTWh/gkKNRFbOSEqbvrolBx/4gWSbCI/x0MgBneF0
	 eM0xaD+PRiIEcP4A8A3PXEwGFMMmOD2ROl/wCZOPBzwxhzc5tlhOSOCB1dc4gnLzLh
	 Z9GToeOjwnO/0H+6B0ps/Wizo26undJQyBGeDgwpe2I8SP+GAshyibTPmynI2x/oD7
	 ug5i/2HjWRZ3xwYXcu/QiMci6yjm95iZpb6E7llhqLXVoFkU7ZfLTUg+ik7+YZ4TXa
	 qyvtPV5+g3eZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3920C74A5B
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 04:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167902680578.18223.10166649229843482048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e416f55019605c9efc4092cbe9373a8c31b2164f5678b2945660d30f42354d
Date: Fri, 17 Mar 2023 04:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679026805
