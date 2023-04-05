Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D1C28F1
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 16:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E8DC433D2
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 16:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680712625;
	bh=lHgw9Jyh7kCdC0L37G2Nbu8hIKHQZkqje0Oiq9y99Ts=;
	h=To:Subject:From:Date:From;
	b=myV98k/MBjOKs3RIuSGfFatECw7bDJyAa/KHsQlgXHNQ3fD4SwcP2cC703q3wgFiI
	 ibzdUXPTHaUf2SZo+mYIIrUmca7K+iKPgsQAm2mOurltbGoqMXibu8tme5vS+QHnXu
	 RRcLIZxwf6Jb5psm1JLY0+9LuAnYp9WwVdMT4GZ+ONZHcFaoVasA09YDSZgbzY/sUk
	 nlXTTP51hdzGlGFW4ZaD+HjLhk1MzLJJpxIMY+wU8vc/8GRPO5MVGOk5KHBz0oOboJ
	 tccCZxcgCpBRk/n0D2PH4XgdX/7nG4ONWriXHCsEgQHFXZ8ATODg+g23WMJxXGS7U/
	 J2qcvKJcYtL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CA0C76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 16:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168071262574.15630.13397340121275696795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96b236d703f313cb913815238d7914088841f93db8a670ae26fe587f3a83b0a3
Date: Wed, 05 Apr 2023 16:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680712625
