Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC09320E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1F3C433EF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674413525;
	bh=oX/j9r/0+IpOWteEngn9/X7dc4dfvelQPPJTf+ClUUk=;
	h=To:Subject:From:Date:From;
	b=nhUDNJ9t/enrmxMZtzxfv6xkto1vMAcRtxU0sAGjrATsq3zHhJuegHvPe0cJ1UvYM
	 eZKKqIxvQ3FyfRLVHVkCnhl2pQ+jAVMtIo1MJijbuPxH2MvWI5uzq/UelYrfNGkNXd
	 U+HmDF0z7P70mgK6GitL1zpnIPvGfGZ8rDMKSlR+th3Ec6G3TWYzm1Rk8WQ+VIp3vd
	 8c20vToQQnn8FmWYHWqwFWw5Kr2sT+3/A2Mr8ztcwI/lVUUW28Rr1mmLSkMJfls7ct
	 xcxi1lhFdbvNcrNaN2WP2UQ+hHqcG52E/HN4lOKbSRsX5R4a+RIhVkT/kzKC6oygYA
	 YJuFEQ4w0i5yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24E7C25B4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 18:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167441352578.16738.6626935834352988474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42448d9c372293ce77e0e550b09b6e2c8c2d3c3f40afa8fd3f5648f2f6fc68b
Date: Sun, 22 Jan 2023 18:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674413525
