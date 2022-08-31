Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBABD620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72118C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661912453;
	bh=rEhRQldRPU1SWLgCIUIW8q7HwRd+b39I9uK6oXj+7/4=;
	h=To:Subject:From:Date:From;
	b=MdoFpIdnMUTyed/b1+KFBNLekpc6Lo5uKQdGWDe7Na5xt+poszdH6jK/BqkKkbhn1
	 /Ghw5UnaQswdcxdgOs/WyAww4ObIHxk6uDmGHQmceq4qwkv1/IarVzQAVwuMMXZUp8
	 qfChKwlwzZJT2QWkFn4y4jsJ3xVas7YQlXa5+IdWUXlD69kcvB1tPGN+hOjf4GgKIb
	 6jHEFzbBEi1X4aHhaqC0bT8DDOWQQPfg/dRNQey1ll7PPlH4IQjCntD6y0UNTuHbQn
	 RjjVsC21VnZW3t/kLRNt9zlMZPR3trUHW78xnhly7yTeVKBfPv6q0Mtei17owqxTfq
	 y0kiNCIlTIp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55327ECAAA1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166191245332.12052.9097272581114293823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743c42c3a01684364e0dabefc103876919732f13f57570bdd226b8e8b710e64d
Date: Wed, 31 Aug 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661912453
