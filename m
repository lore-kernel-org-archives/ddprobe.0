Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFBAB1E9FF
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E60FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667407854;
	bh=eNYnpI/SKMLoXIS7yd2SWlB0OLdOaL/bMInuYfRlLok=;
	h=To:Subject:From:Date:From;
	b=cvlEiZK6NLu/NUhKLm2HHmoDAl99gesQuFvjlzHODNomyoRY2n9UfWLDkwV6DYwBX
	 9gbpF+vDY6Xkj1JssRAFdnSlTNlVfC6arjiy0uTojiX28LwaWMlzneLZj07XUHpPg4
	 Y1D9rfm2+xKsPX56rEMhbg9lZdktrdfbym3Qu9kIQE/WcAvRqVbKdZ3O9+EjrggWZL
	 FFMNTwEQEA5cNSABe4AM8Mv0m6STC+XdW4ehKR5hyK8Yo/jdnMDu1BFJVS2nWCuoTW
	 24kP3QljFFS9EDXBa2ddWjLj+/JpAMsG/6DyDcsp192tOZ3vgPp6BfyiFb1em0VFfg
	 sgOhCiJ52GWxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 532DBC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 16:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166740785433.5427.4414908914913355494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b597b90229ec475104ad4e2838dec47a2cbfe48b7e0b1e7368c67ed035e187f
Date: Wed, 02 Nov 2022 16:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667407854
