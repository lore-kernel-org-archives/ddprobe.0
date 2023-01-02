Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBB44320E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79843C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672668087;
	bh=KyLNOAQBaMA2uq53Eb9oVUczyMRjYLXqd4AbTKE3WkE=;
	h=To:Subject:From:Date:From;
	b=lw80wGFVYlC+DkHimLD7gfd6+dz/W4GJHUDKZ3ljAEC0iQSps5v4vxvVsONgpLYWC
	 YV6QprJp7yNooucrWVpXrFEfzf313oxF21ifmPPqOwpLM4H7T76PSt/+7TMiTwkb3K
	 LZiNJWuPnZyuiktWvn5e2nbYCPMJN2/e3DaUzwZWaeC+WuZt02+lrsxsH0x6FNq6nJ
	 BLMthaJSP3TZs8xmdGWUXx/iFbjdFfWzNglR7jw4dJ8KYp4EqyQXE0Qk3lyeM0bwK5
	 mgUQ02ttbH5aoI4hAOefXiGDg6ffQdcOaM6Xzr+IXrqVtmXIIGttSYKj1u2Rsjk9I/
	 rRYBTS3RkJJ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621FFC53210
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167266808739.20163.4734623856743172750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353918b5492155c3509a524de0d67a70ccf4641a18a07b9ec2ec26481238776b
Date: Mon, 02 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672668087
