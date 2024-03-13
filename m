Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02528C122
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 02:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710297497; cv=none; b=aOuO11swCL7XGjbPUA7LZO8/j9Unu5j0ChmG4kmV8ImbncAV0ZTSNSzObYawwdpu/mc0fshy6W3HyZ6tirlOsb2WbvpfDaZ3EXda9oDWf5ZKcI3a8HncG27OCdvXQCUxx+IIKoZI0tRyMI0q7GQYjK1SbH4ap5TxT65wwG0orGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710297497; c=relaxed/simple;
	bh=9wlv7gAURwBqDXrIHLkAsRqUCj5V1IEaCiA2X+RMR7k=;
	h=To:Subject:From:Message-Id:Date; b=Ft/7Brum3OeCBOW/cAqdwhSp79kOQLnJwGXR3X2uTe0mcU5LvQ4nP1NGc7TA4Ous4Y2+rnf/HHL/480qCU89PL1I3UVpVVEbJEOplStx42CtDKUg+t6sHrD0oxSMTzKVRm+4mNTzi7hwZUgZ+Cw0y/hyeUJn6ZKKfOOgftAGLFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmwi2AiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmwi2AiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 843C5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 02:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710297496;
	bh=9wlv7gAURwBqDXrIHLkAsRqUCj5V1IEaCiA2X+RMR7k=;
	h=To:Subject:From:Date:From;
	b=bmwi2AiIUkCJhomOrlCkvcGftyAyDWGmNLPzj9zfZ6frooKoh9r+0L8/pWgV27MvP
	 AxNsAsYMJI5kEiFGauOMgctTzUrFExhR+mwAXn6lfJRzkKiwtWnTuEFTHszJO6ggHL
	 7vPjCJSEkTbbXQNQcMAMFF40+6pFT/KmnBlsTQd0Fkm450Pk0wP5MunA2qrDks9iDK
	 IVYCXcjaHCZTounPdCvSg5OKt1o0o6zNjQOujg6J8J+/xKAO8Uqj+SAPNPLWGw8Ib1
	 9UMJWxQf+nNNINP08WnYjCez1UPsOglphAIFpOjYEtbAcfFwm1bgqqsmXwH4vvFK5V
	 MrfUbmldLqdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A46C54E58
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 02:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171029749638.29971.10836501825112631780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f50b6f672b81d25e68a7271fc2ca78b020cf28cd452d5352cd0b451cf104a262
Date: Wed, 13 Mar 2024 02:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710297496
