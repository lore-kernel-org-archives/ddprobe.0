Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8750366
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8914DC433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671186687;
	bh=OqcG11aGPbsKIaYxhpzvMj2LUyInZmQASGB5kRdqOk4=;
	h=To:Subject:From:Date:From;
	b=bACnNRBqejkTfDckVFnR1/Fefx9nmCAxU8YIdYOpbsIsfHmgHJ+qgwy4mwb56vmvf
	 tJxxYgA1Yl0HlkkHSbCfs/KDJs3eqbfQfg8QOOMrZK3D9+HwG3z5Obne4VuTQk8Vyo
	 jdyRK8mLqyWMM8HcDcvmAbZbrrF5y1V6rgdpZuV3bKUu19BykF7wlpfrt23WBQalZD
	 yXaL0Zkt5umzWkfFbSukVVO+TFjotT5UvlMzHJCKhurZbg9LA/xKcewlTajASXDVoW
	 7H6RhNgnDBuzubNlMD4IkI8wRm/J86NGWHHQgcQ5ks/lR2bXlR3VRBYjlqAA5zxujG
	 RHWXnxQANpYdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC83C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 10:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167118668744.16298.13387233021209653486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77d4668c30c729df2030a6e794ad1bb1a4762a80aadfa7adf3527a4721e01234
Date: Fri, 16 Dec 2022 10:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671186687
