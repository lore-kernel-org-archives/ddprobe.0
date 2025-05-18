Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422DD1802B
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747530594; cv=none; b=I8yj7uBFaGTwUM5nsSgTptM9sG3vZfbPHw+d+gNvhXZkmRToIihq47Q3p6pok6gN3//juszYG6Z9f9HpKUPlj0XFvK+gPX2cXGaEckijXaYkbSAd94XfbTWWEfTXnTBD0UwciPBhGZ2D6FKsZVg9CKmGSvog2pUphJZvJxh5JGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747530594; c=relaxed/simple;
	bh=7ZyhqO4zSEXBhODTv7dhPtqYsjnVKwsVRTfzyi4OFPo=;
	h=To:Subject:From:Message-Id:Date; b=GGVvmkOvBqVin+i3qXPjLpntczu0U03kPfsyyjWC214T4wbSJKBgb6cQhuWuDDih5dBGEuKvhVmZ3zdNmK5qd7UiwS2Z+D0gdHX195jCdTw7pANLpLVOCTqd8RLm/BrghEq06YXkw0BaDnVAFnHe7erSTlFuFVl47cWmgkZTozY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZKCy8De; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZKCy8De"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747530593;
	bh=7ZyhqO4zSEXBhODTv7dhPtqYsjnVKwsVRTfzyi4OFPo=;
	h=To:Subject:From:Date:From;
	b=JZKCy8De7iS8zfotaUxSgMchqCWh5LAVQTeOberWeebh7Ohhv686LKlgCbG37dOGW
	 y0MwbxBqo926v6x+Z/TST4DShlgJ1b1Kve8+N7blwG4drq8rUFv6NtmcXhXleHo+Sw
	 PoKLVK3B5t0xh56aTbmG1Zca23NUCNfeV+u+3eQt31U+ooBWWUV8QUi5lJTMrr4NQ1
	 3LNYgQGJGbI+ory81c1Dv5EHHLPumWXVBCa82wkx3vEOWABE1n5rW+R3COEhM6amdW
	 BFLD5evifMs6ClcZ0UvQD1p6TNYzNUJxo/W9CsH0uwvTetq2o7vo/CAfTS6KLtZCsJ
	 TpQ3vXHlMkU+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B42C2D0CD
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753059357.17745.4112339176508406017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69abec9a0eead48dc88a3a4a126737616152dff9655d6a194bb4ef960f452527
Date: Sun, 18 May 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747530593
