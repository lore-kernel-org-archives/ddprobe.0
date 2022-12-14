Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CE7AD25
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AA36C433D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671040287;
	bh=hR/b6BppWSH5ZXP4GwuCI0SUfkS7d1SJzoqPONzioIA=;
	h=To:Subject:From:Date:From;
	b=rh+96SIlsDTsm25K7i7T4k8CqGca+es1kCYtuEll6TVY3+rLFEAI7QfUz6Tp5Eyjb
	 PGScMeQQ3oc6ZAR3QkCdz/LxlvgJCorvtNgLOT5vM4afWCCE9f3QTrWDOvywePxU6s
	 XBqFybd0PEP3oFkCE3Z4eUWj1p+WIFk29EP2QDHe1QKcV73QBb9aqx39VcubK9twl1
	 cBbfT3yGLahlt8U2rzhDKvNepbDA6gtaQ9zW+8qnQAw/XYRcA/xkQlYitiZHe8WpIU
	 LlE0W6b4JSSvcLWCAgDsm0SL4gIiUafBjlAekei2ZeLC+I7zO1Z2UaFiDRMOqt+yd5
	 iCJfBjDmLM2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61EE4C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167104028739.4833.11661988971886952009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee152b98c314193d04be7f33284a0d04e263f36bc5dd78257a65c87ac6862db
Date: Wed, 14 Dec 2022 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671040287
