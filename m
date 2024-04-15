Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1400073510
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713187763; cv=none; b=CSh9MqzmTWAZueMARbgEBW03zHGDsVxRSyhlEeCMnllamMmotW/0Fo8y57uguV/aurrCZx6NzgKfcOX99ma1UJbhOEBqA2MGFlSYYd9Kw3ncE+0HjPh9v+tmPNrIkRZTGbg/lFBNoPUV2RZPa2W0DrFlrkbmptEgYlRmVLTLcGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713187763; c=relaxed/simple;
	bh=zfy7gYr+CT/735fchSqVlXH54WSapGIAEYglOIJ8P9A=;
	h=To:Subject:From:Message-Id:Date; b=kpPLWkEkKlQvjWw1hJI9d3KKYM9w5PsnREzFz37oA++vF7wlnbqb06gMw6h1uQOc6SpyD8hKjwW4ASE10MntyFwKZu9FjVeaGo8V1l8mX3Gde7G3/7pMcR1wfQfaL4CWQYKDPi/rrbLUdtv2U+tp7DD5Rp1sFwEftdCQ7oFSzsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AxX/kp3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxX/kp3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB80C2BD11
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713187762;
	bh=zfy7gYr+CT/735fchSqVlXH54WSapGIAEYglOIJ8P9A=;
	h=To:Subject:From:Date:From;
	b=AxX/kp3g3eKPVIhdAwDmGgrP/C32+OyJuYsjTn3Bk5nCyVkKzs0hBOE0pjpKJ02Ff
	 gJ0Q/QbRCkr0dHHLdviPZvliLJhVk0wN9wnl+vUrzYKKXRtI7TzcJPV+HhD0YMDweH
	 uHdSodxDoyLVkbvTJdbzmjFQOhVjT9hupvPrV9/4l8DzU7eTh7GNzLqFTS8sM4cMop
	 7+1gKmuiKykIIBkoqna2sSps2jUBy1WcDCgYOXY7gH6408SYmdwNWeFzmmcZ+kEguh
	 eQyHMYl7AKckuvlYetnCRGricUmIGsV5yIFfmkIM+Ww0hhBYKGzRJ6x316omuCg5x1
	 Eapo5mXsJO/YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBB35C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 13:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171318776276.12514.16296549029622963116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abd857bc00452d13cd53f322da2d4b305b70c549f32aefd2858c7fcdf363706e
Date: Mon, 15 Apr 2024 13:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713187762
