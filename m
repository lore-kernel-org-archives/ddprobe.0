Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7B6E7E6
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89461C433D2
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673666487;
	bh=EEEO1zP+5NBBIFM1q5Iu4U1yiSLZlCBqqhNSq/DLh0w=;
	h=To:Subject:From:Date:From;
	b=kX8afT+PRXhJPWJ0hROewdFwbiL4utvJxuXM4zbiogwoEJi2wRuUzhKnRTSk3LU9L
	 OTvs52zmKj4HVyIkO6/szJmgR7viJFr4RLMNfbLxxX7juRY9Foqt6zS2NauOiCTsBk
	 ulbaC1Uz+4L0dC9mJB+bkhRPERYJwzMOvx6AsDeEs7VW9WTE0GD9E8RlKDaDjBdbQz
	 BS+yeEWEOUsHXZCy6Y+wTlC0x4ZESwAx43i9k6AKFz/AUtaBMucmwMPDiYRdgpG4f0
	 XWrwosJ67kwUbKXUgzAJballGzUkdDTizgTcqCBmtaovqX5M+FpRJn6jW4+PxU1pfK
	 lJBTvM/ahDT+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B8BEC3DA78
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366648743.32220.10394988898583279068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8648dcff062e1040738a7498168cbc0e7cf85339e646e86290637c4fddd4c1
Date: Sat, 14 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673666487
