Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641723D003
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="covGrBw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D220EC433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697152628;
	bh=6pOOYpy3N3JLD+qaym8RU6H9GypEI1IL8rcapjB09Vc=;
	h=To:Subject:From:Date:From;
	b=covGrBw2gcAMyTaunYl4h1SPTqQ++xLCW1pCB8ONakVVwkKwanptLd/Q7PbbBTRDP
	 IYAvx+B7+JIS+rMVg1Os+FlOpjN8YOoYWKTRFH5JDnjJyAyJ1GSbqi2tmK81tyoaT2
	 31pHPvt7WHMb9qxAZfHe7v2U8XlegAwI6025u5DG6wSjxtvv2rlvojcrSN7Q3vsxMh
	 8QgA2zjSoiygZDFQayNDLXj9wOcjUeGxHfxKorxo+JSh3warcJ0mZjucskMUF9xZlm
	 pLGI93n3dn9z7mdu03AeXtf2+oBl/ePMRdq05vVwJa4CDik+75KgsCXBZYHFJWjBak
	 FYuvfd+bSNyjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B42B9CDB47E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 23:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169715262871.26723.9466904110130215417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edee00a25cb4f2ed74ae1a7930c27771f0293d24df973ccebdb3f3344a588e5
Date: Thu, 12 Oct 2023 23:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697152628
