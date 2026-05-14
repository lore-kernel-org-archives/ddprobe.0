Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA3931E830
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778777434; cv=none; b=MCTSw1QCFYj9ak1emzh+pBhsybUViWBL13O8uAAKiSxkdRTjlg83qTTxVY8K682qs1Ev+VtOMjRXnaHiXKSAobKbs+h26aM2K+IdzmlDwuOSExcs+2TXvcBGWG0hiq5Ht/GHJvQ8XkqfCX9b3D8/0DhwFSbgvXdhC7yTBsWjXdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778777434; c=relaxed/simple;
	bh=wL3KqNsKlYPrwk8jf4/mzuTB6S/Vv2t59nhnH2GO6mY=;
	h=To:Subject:From:Message-Id:Date; b=AlP68sIf3IX9WLKCKu0dkSWxx1onLCn1o+1npKt0DbQzMcPFnTH2ywfHSjRCY6dvOnXR1TaLbXMKdYv4E9RYgg6bON9N4Ei1r7yP3YXLcq0raRHGxO/c6wxnXAsFIFNlUYVH0wxjApCNoD4Z961tZ1n1pWx5/OuYhFJMcTjuaRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7w42ISr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7w42ISr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1BBFC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778777433;
	bh=wL3KqNsKlYPrwk8jf4/mzuTB6S/Vv2t59nhnH2GO6mY=;
	h=To:Subject:From:Date:From;
	b=P7w42ISrqJWxxHenN51I27QmBzifc9LB3P55SbP/THriDfbTOTOgWZ4kST1VPG2Bs
	 TFZCJLfpTgkeN8mMVI0bKOlojWVBd8PhQFUFYAeSJLv9IwA0vE98KevfvPkiqPw4vj
	 Qk1qoKQUBI/9xFWekO/DC0r/uhFKz3fPWrR+wU0CQPUQez9zmkzo3Lv4HI2k/pPRwB
	 hlwUct6DRp+3B1vIBYqRf/jXOcnqWft4v2yq90l2k4mRn31wdQLCJJdAsQz3jRHTd0
	 BLb/YjiZGZ7pPENOcDXJcvkHjvU4lTfwECQAi7ybJprMX2SOTBQjwPlcPMUvkwlcMp
	 dKx/iiuNnbacw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2F68CD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877743369.26477.12081650666446012123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f946523f9d306bc4c098ebede57aeacd86b6348b2043958441b5687fafa3ccb
Date: Thu, 14 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778777433
