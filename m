Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECC42564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9171BC433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672480887;
	bh=2Dnbkl78mOo823A3Jy/2KYblGKnkFLoe/vZiXiYUERU=;
	h=To:Subject:From:Date:From;
	b=fQYRfwpkyOgwj5RqtH/4w2a9ka7eA+MpuhCg4FSVF3m17fVmYYjf/hS440dmGnK1H
	 CBpagvsxDGjf/WeFrROd84VZ2OD6dOHBig7CrkpmsHhxLwg98gEeoR0R/Zsv1gntzP
	 6ImXA1hSOLVNs7pz+WwHuw9uj7OMkeiqMUlkX2a5hyzN6Rd5JH62vMNDLcc4QTMqQm
	 1Z5oMbzYch20Ckh/bTEB+neyy8hbcnifdFUb3E0hOMtHJO6BWsbnQPouv6loS9j66g
	 2JpwRX3BzwQa6YnGNv2JHNN0uBcV0GQ9j1DKr6EJuoNsublF8dcG+EekR0Guy2E9ap
	 rsFvGSXNu0tgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A4B7C3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 10:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167248088745.28825.15568177710262265773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02f0ae551fe195c1c0f2a423dbf853dd98d476a6a74ef8b3943f3323d91ca42
Date: Sat, 31 Dec 2022 10:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672480887
