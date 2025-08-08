Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28351226165
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754638794; cv=none; b=sXpDX6eHibmo2EaJp2EotR9y64ulPRr6bk0mVIbBW8IrMTH6GhR7BdY5NzwcvxPjMEbZ0+TCEYA194OC5jFvQVX4QJVUPY2qGhAswisRQeZ12DCuNniUJZX6a6kPaRNrVZHavNQZKITWZbc5veC2W5vGIgm87Rpf74hW/1Awz5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754638794; c=relaxed/simple;
	bh=cGbPZ2rhv38eJ5yNR7nSaFdlVERbDGkNNyk+zRy2cB4=;
	h=To:Subject:From:Message-Id:Date; b=r6y7LBt5gfJ0gO3pRpKwmbiy4MCV/r4LsXPWf3ompFs+ZiBksfh70IwIcSlxwIznPZ81ZvBN/9OH+Waa7pEEvxzGpyukKNTZLWrwFWmhIRqDFGLF16h2Q9JyQqNWYnQik9KBT98ZQgXvp/+Boiv1idXs8gEoisVmTyGYah2ZRoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AkeZQTVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AkeZQTVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E458C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754638793;
	bh=cGbPZ2rhv38eJ5yNR7nSaFdlVERbDGkNNyk+zRy2cB4=;
	h=To:Subject:From:Date:From;
	b=AkeZQTVzzeBfA5i3I91p7WVOJX09RWjZskLwgpDHAudLCYmVXSu7T1INLpipzr4i7
	 FDx7OGPvmSzyL2tvJCktLp0v8Y934i1bZW3H+faUJykPTQAJNsIrc36KeF/sDc4P65
	 BhyTltWaxXL+6FJOSiRPYPEeOiS5sV6aOs8nSu0N/nPCPBCln70FmGoXYXCEz/sGD7
	 YHQuNB8NKEcuX11J8gxzBBaQeST7OT31nUzpzYmxCXCubiyjp9LLKAk54usUz7mu8z
	 2mRe5uPTB7sA0biiwNU7p1CRDMKEvqPHB/6IXy1/Ku+nbpZKKWaSo8u5IcsNUE14Gg
	 QXSX0J05YSwsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC63C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463879358.25353.4247981244773130869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 406b0e463e7ecf586739a38481675f602984e8f504d560aba2cd9748354bd1f4
Date: Fri, 08 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754638793
