Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63B26ABC
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 23:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87E1BC433D2
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 23:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671146487;
	bh=I5ufvr8DW/f1tqiXiw6ZI/NL/OlrpJeRs7aFMn3Jtxs=;
	h=To:Subject:From:Date:From;
	b=p850b+R8sk7Iw59m1VvylPoB04EGRvmkkJCl0olBg3yi6yNMo4n2dHxyjqYbNRJEO
	 MBbaEHpcqzfhwPNQYcc8p4VuYdcFjKwIlvjm1KtGPXY3RxBMWotfJ4waLAnJrKRhBX
	 E9VrVsqw/zrBDPZRa4+3MUWNTexisLy2zF+DHMY4vDWmJQ1z1FecpHArmDv2VVV5qy
	 jtPvC6OjTpD3YK8tpCRDEXFdeWhZH45OP1/0nIlrZuOBjP/CLTViRVyvaoEoyPGKZ4
	 A6N2+A5F+bIikw/9ceHh7VH/Sc683u7ddAfEWZsma+i7M3zWeks8j/Nk3mH8yJ45NI
	 +/zpLKzOIOhDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F6F2C10F1E
	for <ddprobe@lists.linux.dev>; Thu, 15 Dec 2022 23:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167114648744.32593.8727990850911757885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5f94c824d1b84abbe41041f6cca18c6d0b853a43c2931696f1f01d0f920359
Date: Thu, 15 Dec 2022 23:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671146487
