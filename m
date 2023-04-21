Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065420EE
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 08:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA130C433D2
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 08:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682064485;
	bh=83xxJCgu+AEHGud7MAH3k4T/ABgS2S81v125YrHXUB8=;
	h=To:Subject:From:Date:From;
	b=noCu6y4dip2/QtfqR84t/YlucHHncXbDd/5Lez1s3W70hG97uh9o+cnaqE1q6n/D0
	 yL16ulWMFQzg74AnsFoQr/u7TZBRxprGxPyLIUYLcgU6l+r+H3rwIg7UsEfKcgbUu/
	 XJN3CTT9Y+OQuxux7Gp67A6FytHsqDaOLYERp9Sanft00I2WDO+NePvkvTBouIwHsH
	 pJ0kNcFNfpUnVHu88ya8VNU/0O625Y7FsUoljvFd/Qadj5Cf3hstBLaUv2a9eXzlbe
	 nIh0cw4xDcy6z47xmMksMVVYK+0k4n+7U6B78IvWwTZHFCLh5rLfNea0Y7BPd7nA61
	 I8e3LbUai3EVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE42C7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 08:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168206448576.4534.4641400249098250919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bde08cd43cc962a09b5cf3579d8d8d3be18a2f457fd36d22c2674d49255e719
Date: Fri, 21 Apr 2023 08:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682064485
