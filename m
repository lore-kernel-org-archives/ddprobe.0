Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322B415198A
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738757754; cv=none; b=Lro3u4B7j+sM9nlqU3e38/RAnQQDp3YtLTAECjB5oFS9+fSMzkEW0p00gqmC49SNBevuU/V92vkPMbkm104D5SOjlsFUWfeDGr82bTE8MTvM1k0FjbTaESZfkewGLvmSbQzoCPiJjIWb5/J5hGv6+fdiCcJtvLVexNFx2qfR5Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738757754; c=relaxed/simple;
	bh=6jVXJPNXersvO4Q9FDOBCwX7OpKLKKLF+hI/T4WQ5cY=;
	h=To:Subject:From:Message-Id:Date; b=HH1bVKydSt4wY2eVO73VA71yDPTlz4dmVZ2Qv/bdzXz536gnPmfB3lNv5KpyBeHg5rJDpJKbCMHYsxNhnqzC9i9t9huZs1ulKjm1E7dqPgaCmf4AyAZ0wZY/lGe6HJ8WjIgVc1zYu3fjo0czqGN70Em2z/PwF/c8SbBhoitjCmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yun4kZnb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yun4kZnb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB398C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738757753;
	bh=6jVXJPNXersvO4Q9FDOBCwX7OpKLKKLF+hI/T4WQ5cY=;
	h=To:Subject:From:Date:From;
	b=Yun4kZnbKGExAOF3FCAmoHgVYqV8Cbn2QnOG2Q/QJDEGkEzdnNrGowofARqEslCEQ
	 7J8j1vcQuJ7dDSUGez2IkHJ+YhNlrn2E8lrYVYGpI4nz0KCh/z/SwqjCRSqr7cQj3i
	 WQ7QcLlwkXul9+6K1qVSSYPc6+5PbGr7bltT2Gq5xmOZDH6KSYH8mHi68oCx1rGAih
	 lCTyDXU9jxAShTN4bdi6110IsbDdHAibpTNWYm8jSRK02Gf5gifIAEIkU5TglJbsEz
	 fiycbkwB5HDR7q/hnioDk1xnnH0Kjo1vbqc3GHUFE/2G9+XWmRvyFtkEuqrQX1OrKz
	 RNYL2IeG8Krug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E91C02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173875775361.8965.2802723067874040260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6133dd76f86819ae5855e94c918fb2b191e305ffae3bcd75c49269bba3284634
Date: Wed, 05 Feb 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738757753
