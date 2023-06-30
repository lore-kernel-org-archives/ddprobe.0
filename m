Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E86D1774A
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:33:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3083C433C8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688160789;
	bh=Ib4bgMmvvbvRemwsA4+0RtlfppeWxiU2gsUBlRqv+5w=;
	h=To:Subject:From:Date:From;
	b=IdJfEiWT7INDlj+56re/+HU+KCuVfaYPZDgOCngE9SDkMi0ukCtmMFpbRQMPMUNfG
	 BftIVRLA8/O1Aq6NaDE/O/+/SqmctlukzsgAkcjAV2RpP4Gmjm2jRmf5ng2DcjuuWv
	 Qct6Ouzi4zGecWTK9q/jE5ko/cZdJcgkCfJfKmYjrZvwKRA6LkyUbsqoNtWmDtmvZZ
	 Jy7ycfQnlivQ4oBuO4sd32Am3lndlE2Gh0ajqzwwcbc3xWLgstjmZsKil6pm2+tIvs
	 No7tMIouuymcZeDsGJezFmMoBfAQUteSJRrJLLK7sZO49dfh3c+tHV0YMeWJ4UwyJs
	 px/w4nNvQwpnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D80D6EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jun 2023 21:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168816078887.23732.17557836496205005519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c4f7db8cc0059876e8107fac5c21c2418ec39a5a08b307cb96192b0e86d316
Date: Fri, 30 Jun 2023 21:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688160788
