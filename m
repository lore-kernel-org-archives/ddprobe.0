Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC067C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FFFFC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661620852;
	bh=eFBdcVfrTqQeqdgtP7I4jGLmOjugUIf1yYFTTLQkyQE=;
	h=To:Subject:From:Date:From;
	b=StF+u466NbdDIWVSvpDY/8QFw6kclATlJLTVaNwyyXlC+zyHS/LzznyTNj4IhyOuf
	 exhTaF7f2mMrrH96QvaCOMxfq66cgIaEiAIc4kCjOis7sjCTwxFXVQlBw3rMB1xW5P
	 cMXkOgoP5LWmiUQ0FbSA7dMDje0l2XC7l7Zqaxxux1dDRVpHPwi4yrF44xPgTzy23Y
	 /vMjCsOpQ/kNcUqasM9iNzmhn49Jx12FmdMvk0iFEPgtPrQ6GPAXPosNAAKPc1NSRs
	 bEYdPZ4j+m4zEWNSmD5s31e2GbJIk6Zvhv+PB7PT9WELKhK+UCUaegk6DLfdE3FVml
	 R88o44qLsQC2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 557ACC0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 17:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166162085233.3898.4031385575071668228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d233da9a05ec03e416305138b6a8bdb52a2ed3c4267e7d51528fae825c076fc2
Date: Sat, 27 Aug 2022 17:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661620852
