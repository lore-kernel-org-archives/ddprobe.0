Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BFB63D
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711221497; cv=none; b=P5Xc9xeZkWvWqvzQlzJTq/YUlmBP1446Orxp5l9VWDp5dO4L8DhkMtpBu78g/W3YsjXqmhhYcR3CFNRGLtNo/RyW45lV0P2p71eEjsNlaUv1Gbquwh8z6FIBsqQivcvUE36KZvGxfTb3EGiqm5nwu5MYNpBUboFFZmp89BwmIvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711221497; c=relaxed/simple;
	bh=PEaCsm2aLyB0LcQrC2JJuqNZm9aVMqjV8tQGLoxZUxw=;
	h=To:Subject:From:Message-Id:Date; b=VUtLTg+CB/edVvuSb/jQEUf9m2xEqjhCuBgOhMgeDPA4Bw2zZZ/VVeN4YmN0vxSScBcpTi9pX4EnUsWNIrFMTb+s1GuD2WHM8grT5AAIYMYV6nq30/kWkW+e5kM/1JjOUE/mefFFg6oXXUJ6lhPcE7g78KA4qH/77342v9VO5os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyVpXZqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyVpXZqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC3BC433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711221496;
	bh=PEaCsm2aLyB0LcQrC2JJuqNZm9aVMqjV8tQGLoxZUxw=;
	h=To:Subject:From:Date:From;
	b=uyVpXZqubyWhN4+RQpQtDZr1gr74R1zWVAdf6ErQQlknQLeZRLHJuSZiT3/piamIk
	 ZOEKMlIroPbpXUXRxY6yapo074JAeOIRz5z/Z+kMzurqksxqlpPPvUbR2feo2zRoVt
	 LMMF05xDfCJ708+22bGAfZhv6OofhqyJ+3covRCxM6vBhOOIIjYu76XvYYPudtkmcO
	 eXLL9Rsb+ki4sZiQZ+XymXTs62LkWrcTWhlWz70oKe5WIGFI3VMub9Larhbsv7qGWL
	 U05OCXUFjAWBL0H2Q27y43lYdAcT26/QXbIsX0y2QYkh5aLXtqsNCqZOBnu3JKuk8/
	 IcTAq3uStVNkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 772AFC54E58
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171122149643.14618.5005727655109050906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f90a6b20db5c478ad3f0b7841b885c1f8ac77beeae62d39be6b5ec30c9c983
Date: Sat, 23 Mar 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711221496
