Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417AD165F13
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740845334; cv=none; b=C6/SGc++mXIn3RffBP70+AQOQtULbg8HUrNmJHBVX210wyMz6TxUiITtjgid8IYhK8eRnVNJLYp+mOn1F1A69vGBMTdsRcMT1KRH0Mz8VuMT+1nVEu8cOYIx/ZRxU7O4zhPQrzDSa3THS9DmgZ2iNG3cpXoqqUjK4pmuL2a/ePE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740845334; c=relaxed/simple;
	bh=t7bdPOdFUeqzzA46ZeqPsRRhp1RL09VtyC5qJLfAXCo=;
	h=To:Subject:From:Message-Id:Date; b=AXSgN/Rf2zL2YCQVLW2R0L5pLPgASKcwI3UySxs2MFe+er6OJfqc2NrTzXrjSMdMlv2oHWyx3gBu/od8YpIWz/elbrw6CP6sydUaTW3r7pSv4d+nn6m5L0i/3kpNjkB1tRKqWuGFrB5rODAmnOxhMEXFDPqJbE+k9WF85J+f0FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRHNSdZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRHNSdZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA53CC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740845333;
	bh=t7bdPOdFUeqzzA46ZeqPsRRhp1RL09VtyC5qJLfAXCo=;
	h=To:Subject:From:Date:From;
	b=kRHNSdZZh36CUlVl5BCtJ1iDaSn56ECG16frShxgho/SII5A9QGH1slEw7G+odBW5
	 EZXp3ww9fLQ9ZAwP0OZKbpMiYMwzFGJqvdu4Fgp6TA9AMtpcwWhu6PKLOndm7+4yKh
	 6a1RnLZjlYGG7VAfucZtHGvpPyzGm2+aiA4KLPTyCEDU1zXnXiBO2cPsw+v8zaj/Ms
	 o7CZES6QUzWKlx5VC02UghdkTPjr+b/VUY2MEtTQ1fcGY+NPoTnp5qq6e4498C9GjJ
	 AoY43MRmFD6ckYKgLBSma6xQeDddZouXIUdDO8cCwQIGH0Dgc0ivVlNWrKCt1tLASo
	 6421gH1ST/6KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967E3C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 16:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174084533357.19178.13975792315250770260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b81685b55d474bf9c3110fab71ef2479452b35850161a9866400291ae08008
Date: Sat, 01 Mar 2025 16:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740845333
