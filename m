Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782E28C13
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:21:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFAC1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689463268;
	bh=EZLMxi0SDsZxvDYtKsWNMFu+fjzbGB3PM1MxI74h4jI=;
	h=To:Subject:From:Date:From;
	b=M/SQg6WJNDiCPRijhR3DInKqCJVXe70wE/uZTHFCSLonFyFS2qJiAsSuFEXJ24y+6
	 A2kXfzyTFy5dN2fRPPAh/ehkPu6ACS3cAqhpe6Yzw9QH7DoOVnMymoxlud/LyeVRZR
	 4mOpg3PUibirNq/1xOkxQV+8BNQLroN/Ubxt4pNFyOm1NWeYZS15Cfl0v3iW4MFQPo
	 21aNzUXobojWsnhf68iOzUgA3Oswe6ev7ls0ddf4Gz9rXEWSMtp9d+5M2xFCP3ZD/Z
	 wr9iAG09aIjIhm0uZn5AtdxxKo5pWutJ1DfCJfzdnr4f8RV67uUMIf+4KoAkHGNeaf
	 2rSsjBr4R68Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A55C001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 23:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168946326872.30261.4225659945705251114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb0e45cc53427c29e0a904570f563c3c6d5b90b63714f179cfb8299f3f5cded
Date: Sat, 15 Jul 2023 23:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689463268
