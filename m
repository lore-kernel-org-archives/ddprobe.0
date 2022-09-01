Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2E2F66EE
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E2B2C433C1
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662033653;
	bh=Z+qrpUuNwEKzN/RBmk4WpldP1qql0QDkxuskelItc4A=;
	h=To:Subject:From:Date:From;
	b=EWaywIIeJt9wsCFztsDTYGs2b1fQT1JWHdjLHbvy+eg8DemxRN+Lw3QPCIdCkR0Il
	 A3kSJg8zjxHOthiE601Z+5T0+aToG0bOnqOtXAF1YS1CwpOjG2KFDmwVUjlHQ29NwO
	 sLDYX4qUqHWb56wpP4Z3RNb+eq577+xMOv1uw4GcPFiRG3zwWsNmiWBoBrUB8Knbsd
	 HSkQFIuxquuuLjwTaIv9/N7Eu1x27sgdLMVGXvAKhbm1VCxuDyv+jmqCVsgiNgxel/
	 UM6j2DwI0c3m+/uOFEt0vApLYJqPrCgSEmRw/0sDjrmlywhfXPXallaLwKN+B78d91
	 uONKvbM7mvoJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5753DC0502C
	for <ddprobe@lists.linux.dev>; Thu,  1 Sep 2022 12:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166203365335.6258.3584628692892051101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7805b0a434ff70ec682217b0426997ac0f61d9ccdb53c3946e19dd5da4785147
Date: Thu, 01 Sep 2022 12:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662033653
