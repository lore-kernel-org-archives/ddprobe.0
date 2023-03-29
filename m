Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4260B7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8504C433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680053705;
	bh=xxfADmGcZHB9cclMzdMXBiQE5QmhQuMDQ3R8/o1seKc=;
	h=To:Subject:From:Date:From;
	b=UIKxeeT+/kvC1+mjkLEAoH+PXB6yS69C/u8LlqlKckztzj1KRDQNFPBwb1J65bPIZ
	 KumFiLwRb7FvdompbV+7JHnk4HveDSFXdfZUc9h3jVffJsEaVtEnOw3CDyeGmXCfis
	 ZeUm5DGUIGBmJWMWHsI6KkXMzmnbdiVB5l7DzvCrEpInmVbWYn8reiQY17MSxbi64E
	 +GprnjvFGrOg4uC0RcHnXgXXa+rQea70RCEdtU7gt/rOKsl8gXXBMjGGwOzI+f7oJA
	 VmlQzAwT1tVCEByUd4YGsgkAucgZd1BWlapN9FTyNsPMsHX2u+zkI4QSkG6qfwcleI
	 U942dhJxacdBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A22C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 01:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168005370574.23487.3567040246772493650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01726cac5e220001077b729c35a6f509d8cc4cb0c44c033105a3a4ee579708d
Date: Wed, 29 Mar 2023 01:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680053705
