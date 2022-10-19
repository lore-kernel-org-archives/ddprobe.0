Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB6547E
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7182AC433D6
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666189853;
	bh=zgp3JeHWq+oX4zQn2YE3OJgUiDOAfuNss7foOFrWSyE=;
	h=To:Subject:From:Date:From;
	b=XPBF3x5Ir2QEhxGsUnkyBCSHIaB3lNa3SexDPCx2SZaoC83WvzpOzNwE6jmM/TxiZ
	 zSzlbcW+uZIcBTmYgftbbizJmH/zP8bbnCrDFgkPsyV5Kt2dODw4aWT1UQup8yHMW8
	 4GIn8lezhOtTMXpo+786oaWb1g7apBr0NkVY2/cpaJ1xVjWv7NnUllyZbFabpSnf9L
	 yMOAy5c4YtromBzUvqXNFHHXmK93YH3ecjy1BAfmK/HL4HHUeCYg/jBb4PphAfKMMh
	 kL316vay6kHTytKhuPOro+R+MEH0EuYOsJAXaI0T2hC/9tL0Wjh1mA/p30PwhBkOMM
	 8GLgZL7nRaOrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54164C4332F
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 14:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166618985333.15864.6171398224653224440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b688a9564b1c1b1ae4c5314c70b39faed934c316ad9805ca9fa084a7ad8adbcf
Date: Wed, 19 Oct 2022 14:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666189853
