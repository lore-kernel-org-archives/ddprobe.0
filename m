Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C561328F6
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7802FC433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671009687;
	bh=yyv30szxRaA1XSrvAPu5lWTr8SpmFT5ymeaMj8rBBxo=;
	h=To:Subject:From:Date:From;
	b=fmEF+XcHx9VWLl9we61yOmaHhiOjZRpkDvgm1nq5KWWMfvNmesWFMr9zsBPOj41Rp
	 BWX9F8sGzlG5vcOhB1NTBvuFRMQJFUlHV8CmX9OrLuwUaF3YFUrIxVtLhGUjTb0SQ0
	 ihTFmcpmqcogHNG/dl2jorTzKU9X+2xsIBCNww76LgRFPkOYPg4YdYWbwPg2CrDAcf
	 jDPNmnUP+4hSFQi5dMI1Wp3KgZ/H4WgGrvS8bOlbZJHaKe9eAOMs0wEAQmLo610pdI
	 pXWXmShyv6OoZGYGNCyo+3GJsGyB5CxmMlwjN5NWJBRhsdb07LyfspFtSeVBLLBQdE
	 2UhfzsIO8nd0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EA2C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167100968739.30923.14788492085301784497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 680468763ae92285ae5afb9d08ced75db152a3b10a549cd53980f8516ee760da
Date: Wed, 14 Dec 2022 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671009687
