Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5F01FD0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:21:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0D6BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:21:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689571268;
	bh=YmzxoAsh6tj47XOh3dkaXEOjGDUobi4r7qoIZ2fU0bI=;
	h=To:Subject:From:Date:From;
	b=LnWS+L5pXBE/x76ZodkkuqwyRTiHeA+GOj+zcehj4WM3lU8/gfGR/lFBQjUHsJBG0
	 qKW1pKpW2CHp5PgEfdUuZ5HUmAwK5SL77n4evKICg4ognRxWNp0qn3cXysk9w4hVdv
	 7udko2T1uqA5hMwjW1H0HszqEcSajSbCL33B5KN/o61o0Nh9mM4iLu7A1iWzjeZnIe
	 NhLNwuRPYuQBkAU/C20JbrRUB8+Td+dvnh/UkpnxKYNarB9lzioEWYzztlgbNTxaTn
	 ivG728Qy5oIRqM2y3sjqNG+RvH1NGx/TAyV6fjtrtrrzRQ0gsoaJF6QZlzlLsSPzJX
	 NvgvYxJJRle+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5DF8EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:21:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168957126867.7959.4025638900911574391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4970581172c43ec778270348415d7c4cbf273c8a441b0113946786450265339
Date: Mon, 17 Jul 2023 05:21:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689571268
