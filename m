Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C617B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 02:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88D15C433EF
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674007287;
	bh=i5mbR5nruCsrUNrAACiVDKbfTfK0teUZ+BH2WQVzC14=;
	h=To:Subject:From:Date:From;
	b=HZtkftwuDl2YCFQdlDd8pgj52zmY23As/bpiT16U/y3pxx75qvz7T75a9rgVAbhQg
	 0UeMZRSZbViXF4tQPc9vCNHjfkNmK5rnlakve9EVa/VCbIqutZJeYZPUWFBKUBKmgd
	 ChsvoQXggwBCM5E2SHYXMsP7diTNxJatArDypZyI2zJTmko7MyealAPasMm5kMW+07
	 nZ80AbC1QemSv93VB6ejMAxlEIAtRtmi2knfBX9RpHm8CweLpU4c7EtEovLEABQNjQ
	 zoS+a/L1sDyk00gi6Gk1+mkc7FsmxlB1xMxWJhUey+2YWdNeQmmx9VyV3BNbXLZApH
	 Ol9rfC6tAgeZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70212C38142
	for <ddprobe@lists.linux.dev>; Wed, 18 Jan 2023 02:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167400728745.5757.8988394768073779275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d4fabf6fec36fb0b94aa02eb5015ca8479b2d55a03138075f0fa86758d2cc2
Date: Wed, 18 Jan 2023 02:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674007287
