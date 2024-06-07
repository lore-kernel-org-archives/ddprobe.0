Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63C5515B54A
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717767443; cv=none; b=OG7mYi2zSmAm8DguZCAMLfMQmkmLO9+cCPRaXV4CuBwqaQ+Bi+pD5WygViNF5CKj25hHWlOXdc50KaZI5AvkUPEkstPOZtbnnN5JmH/lCcgDOeBtsuP7nTmZhfF1UWC7NVT+q2e4YsX+4PZa3oUzpot6GWc7r2huzSR5hls8KGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717767443; c=relaxed/simple;
	bh=4ZnSW0bmz+vYh2UdX8O5+c30MsPs+AEROX68+FRbrcA=;
	h=To:Subject:From:Message-Id:Date; b=NH9/LxWj2wWp3wdhWSS7xIJ7EqMwyLTyrwY1DnLEEUZmVLnyWaiyPiuMDmXPihkUbPD06zU203H70YScVlRI/C/P2h0wg/5sQVfbq4nvT5sa+olJ9zvDCUjMrVhDeeKSQ9kuLAM2Aou6oZFKRC4S0Y7BaTI1omjS8CQtnRrwSKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmX+i7EZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmX+i7EZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3130C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717767442;
	bh=4ZnSW0bmz+vYh2UdX8O5+c30MsPs+AEROX68+FRbrcA=;
	h=To:Subject:From:Date:From;
	b=JmX+i7EZ1Qj7QqcvAhzaMQevRStBXqw++/ZoyngqaQniPehiqnfrYZJyNEoPD4+B6
	 dBiVzS9Fakpf+dhMJ9eKLUpJpQi93JM1SQqNyZE9/sCNpvf5rcSTuwTd/0byTsm3CC
	 Pyn8HY5Vs+NeBWdIksjvZ1k8jMyJR1RgYhUmTDuzGB7NukR3Vl5Os8XJslr+Tahlld
	 aclvKq58m9YuJwsG5q0Lp18+u7DYtvCFu0LyjVT+MJXir+ZhzFbi+mKhB+FL2YT7xP
	 +WTdEizEo+T7g5xmkwtuO6A7Y+oF/R4YFvXLd0P3Lg2E+TSsomt0khTzH6AqMTJNI8
	 9CSpGfKY/0Qgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7B8C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 13:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171776744280.24730.7287163696666052799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cb1aeaa05c69665a4273e59808cfe3da572c314d64b92c774ce06e7827f24d2
Date: Fri, 07 Jun 2024 13:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717767442
