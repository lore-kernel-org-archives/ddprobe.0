Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB3F2588
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 12:36:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97FBC433D2
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 12:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677674165;
	bh=LYorblVHssA/aH1xparE5mlk+OnKHpPdv+5Di15E36M=;
	h=To:Subject:From:Date:From;
	b=ld0OyCiAcCWuBG/p3TlGuMfeD6sfxrSc/1LHP2ClmoGIYO1Fc3Jjw+59Ygsohud18
	 dxH7OOEX59TwDr0NRTHRUx+GC8Wt04vBLHEcaLC5HuVEfucnPjbphkHH8kqifmH5kd
	 ZKc1lVeiwTDTHoCB7MrqsF7WpemJpHC8E5d6ZifM+lcC6fYEdehrfWSFOowEemT3kd
	 Iv5awnuIsfTIv9iDEuWlOv7wRJQjTbuUgVuvXb706/xzOizqXW45mSnXPKvln/doif
	 8xqp38DYJMx5R5OtJIxdmI6VJ9nfJPyJw079HTIIiSl7oV2nl18cBMv+I0mP2kkkLw
	 JxUpKWNutkIZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2347C64EC7
	for <ddprobe@lists.linux.dev>; Wed,  1 Mar 2023 12:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167767416572.23607.4149462520391773485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e49cfb93d10e988ad9d685100a8bcd34207392ebcc1b8d51e560e552ce536f
Date: Wed, 01 Mar 2023 12:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677674165
