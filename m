Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6DDF23DF
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22098C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685647566;
	bh=ndeXHXQlpgtPaXlRsPeJLE2WZOZAB8BUjhE4Q4rDAto=;
	h=To:Subject:From:Date:From;
	b=YcWXO2EnkHUmY5fYRlgSGBX3otyiwvT1oGivl083W0HX6pA0EX3rtVtKWcKDFvRZ2
	 uyJV1+OyNweItXcGPz38ib1cE1O5fW+u9MGoUmzeTX1nQnqNZWcEldyrW+4ka3iyUq
	 LQAFstvbrgw3PEybE198o2ms2zQXtNfaBggp44Ll+522jC1i9DMJEoT8tnjpJeue2L
	 zc6tcR+M9VmOc0nP6VH6W/sRHOBoYrBcWajK40ahyhGjbjXVGkTh8oOtG96BNAVyGb
	 KcyIP8TunvvIwvTGWBobTy7dF3mdMZzwxz0MgdzH8miJfrLArxh2zpkNylMYQJB0cJ
	 DusZ6Qp6fqCJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF977C77B7A
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 19:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168564756597.28557.5569341125832300881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509ee7c45add7bf7442a9f518f384101caf24b76f4c790099c1be43d1d6c3725
Date: Thu, 01 Jun 2023 19:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685647565
