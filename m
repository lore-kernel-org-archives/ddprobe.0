Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED5F10ED
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86E9DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670660487;
	bh=oReQUUGMxVrmPkDNY7ix+uuWrV6tKg853r5rbNojO+U=;
	h=To:Subject:From:Date:From;
	b=hXSclLX2abTUbAq5N6weM7ylDyiJnn8CRZPTWt9AgHzhHAFDvfhU1iNFWbNhTz5SE
	 A0fIWB1x93n40hmeUgCwU58EWIXf25BKsE0+ymjVqsHV5k9qA3MdtvKsD+rRfv5H5g
	 5r5D5ircbeK09qhpaw+RqLpbqjCviN3jceWfZIJMRSwi52U48aIHmPRO7D4cq0Tg/c
	 J1/nmPiVsSrLD4YDsvc8GAxzr9QOoPqRT+++wNk0XGyEdMlbJiVjiqW/++hXRndqU5
	 NXxZirqO4mIKbEtG3ufKE9ICFT0nDPz84k3K1i+54/eXAWwFvx1V4UzrR8VJ4P0jW0
	 R1wYA49LteXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 629DAC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 08:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167066048739.21664.12429493335507780395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd24a7bbc06518f55c28fa0e8f12ebeefe495a62c42d9f8595ff68920914e76b
Date: Sat, 10 Dec 2022 08:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670660487
