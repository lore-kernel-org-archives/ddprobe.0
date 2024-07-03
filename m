Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A0DF4C97
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719981923; cv=none; b=Q7pfYmPn6QoEZwpTWg8TsokLMi6OS6uajgXW8Tg9ee/ZqOfkver1jDqBrWR6iwoIsPoTbG0s39XRh1VfecZyrw/RlazOEWM7SiHlOo6iZZnk+bbiIzco9+UrtCUi2raYtWp35JsNgror8IkL7LfOO2G66s31erLrzI2sUqchK+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719981923; c=relaxed/simple;
	bh=gInyk/74DhwEk0xtrArFgCA33ALzorMtE5O0V2Gt8Sc=;
	h=To:Subject:From:Message-Id:Date; b=cax4WNkBzvNDHc4K+nBIOI39wEW4dFdJ92mW6AAJ7+v6YbiijqZTbQoPpy1Di8tAaNRFxGBTGCfajujniyxm/+6zfZ0BK1n0pH2QaNwEaivt6qf4MoCxeZZQEOtYB5O0p0zRYQOobc1GEf3CgSUvCX3f9hZULJQaa7kWpuDXe9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JN7XGLe4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JN7XGLe4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00BEDC4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719981923;
	bh=gInyk/74DhwEk0xtrArFgCA33ALzorMtE5O0V2Gt8Sc=;
	h=To:Subject:From:Date:From;
	b=JN7XGLe4XGoyU4TwPyvbPWu5Yi9hVvs6T8njablB/Lc4wo18K3CpWfmBf+yDbJRjM
	 dG/eOowT6Bq17M1Bun51Rmm5gJKABqgW8XUpXbT0NLMUnUKQRV+A0oNoiwzp8TDAu4
	 bU6RKhVa55uQdHPgS8S/cxTAwqQ/riyk2R5isGvW+BAPyROm5S0P+WxJYROtx+q2do
	 aPXfKYBYxIShbibn7AcedmlzWjany//o8+e0H5jYzVGrLjdyCaFnj/GbtfAOEZLKlz
	 ntVyUky6IHWFKa+hmmpM9A0Sc3G54i7aAW1R1EtbVmpNDByZAsY40p1O6BcZ1k2rkF
	 OZm8yC4r8ke/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFDFBC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 04:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998192289.29931.13652894866100710283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9b43a7ace5b9871ce54e02a3d387b3793e5f274e9f01963c7f5e90c6d9ac002
Date: Wed, 03 Jul 2024 04:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719981922
