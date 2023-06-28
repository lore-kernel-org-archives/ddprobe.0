Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620CF107B1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 20:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE01C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 20:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687982588;
	bh=e+SsYLDcJ/Gsoysgmnb+TlfJPXubrFKXaqaBgxvVoag=;
	h=To:Subject:From:Date:From;
	b=WBBQp4Ql+fjok7JUt3/zTQdylcTDkSHrnQjxWdlN4TxhNKf6GZ/UI2r6lj1QGFMj1
	 pEGGk59wq6mMR6vGGhm1EgAJ0mQjKmNq/pgc1DOxbEAT0HSiSDQvQevb1d3W/Mq61F
	 jqXITVNZct2INta4EQHZjd+LNqvmCA4PcNAoM7AyjOaQKyo+0wm1r3V4wfduxdbB9W
	 iBcBzW77ozuan0vdQDN0cV1ArRkSOGztDGbApzafRut0VtP6SWvRS2fEsFzdBSfD0X
	 s0GZFjYxkM6+09xEpS302jrcIA5m3mRFXiJjGT78oV99eyrEJooZK+/wCDbV823TOK
	 M7msnFJsaH/EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EAFEB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 20:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798258871.17416.5834791189975637093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8961848653e27c5416355a0cc2c33c91c8296838d7654000755020235bde7eff
Date: Wed, 28 Jun 2023 20:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687982588
