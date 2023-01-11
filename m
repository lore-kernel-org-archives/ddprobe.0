Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DC9291F
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B02C433EF
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673477487;
	bh=UD1cHBL/7MDoBRQ/ku42+yhaOZh930RK/MHQm45rWbU=;
	h=To:Subject:From:Date:From;
	b=aXSO8LyCxV0YJU5AndJ6YW7I2sbQaZ72zFml1i9kE84OwXFErg3Tqi7qWcw0TcYti
	 GPqPUoxRFaXq+g82Je6AgUCz1rE40OpOVeM8eIkw8Qzq7COQADNVuDjxm3HI29O0Gz
	 33iCnwvv9AgQcO0I5DdsFhNePaNW/Y5UD5nzV1o2YDSRVKTCPfcYyE1JjAdPqNLuAY
	 5VIck0AiI4/SqIJwr3hdRr1ewS4XCQ4lPOBnoHUBeNseFXMxtMarTY+GPkrcEEpcJZ
	 VWUp+j63rV0wdzdht2a9B6+0hGAVyhK3Qxekn57Gt9WDl7KzPHQ09ZRRvuwb56e5Nf
	 TEC7qKXy1iu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68A24C5479D
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 22:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347748741.29303.5956812374019859016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9952b89ba39eacdfcc1b53b8ff30d61869bc0a6735c2db2d83914c29fd5e6e16
Date: Wed, 11 Jan 2023 22:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673477487
