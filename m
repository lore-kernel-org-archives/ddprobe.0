Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BB0305064
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762781394; cv=none; b=EiInjgkdwzkjqrTO570IYKT3FlBlzm5BpwRRJI5v1ZOgFbAUdodjEpVMkGR/sUrEDPCM/67uUvVnXTyH58VGweL5FQCNQDs94a3XUP2HiQjZiWQ1PO09k3BXENvIB0XMUJeLhevSAzAGXtLDUELMCehWt4Zd/oIgwtKfMyB5ao0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762781394; c=relaxed/simple;
	bh=Hd0CddO/H/IOkuL8Xo9N/kkuAI07CZ2E5xtxjYSlI9E=;
	h=To:Subject:From:Message-Id:Date; b=cu9K8ElM01lEYdBxbApzJZYQvmYAh3mEcDNmYv5rrtCCWDytgu/KJNN5B7iJgzOBkiYucS4/Ia05YYlU8iNVDy9kXN/Y8vgEysYFOFRdUxR4cWnRuWsU4uSEVaARiqfBxE43mjDEMOQijV+0RxQbpNIluD5ikdl1rhkv95/1+Mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUfVljW6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUfVljW6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A40C116D0
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762781393;
	bh=Hd0CddO/H/IOkuL8Xo9N/kkuAI07CZ2E5xtxjYSlI9E=;
	h=To:Subject:From:Date:From;
	b=XUfVljW6M7xueDgGGVPnTWZyuLtn8k/UpPjI0vYOXJGpvyJS3FyszuexNtybg5fkR
	 /SAVlBJHzrM90JqlUt+j3lcn3PmSVPmJhX97XAo5P8/rgy+ssA0I56WZncuYvrMB+p
	 7UBjbJ0fkRj0GXMC8eYRiBzIcsx1PawPOl9Nq89kKsJI7hJjqA5LYpTPmJ5p1WxVrg
	 sKqG7mL+fpMot/ydiO1sIvCikVIIUJr9qZwEHkqJ6fl8tiud8jFvESiVaXkGV0lfWA
	 ozT0YDl2174v0ciNJ49wpVlJUCcIGgwCWqQSw5iPo0vTAcN8ghHxgrU4HO1vMpgosc
	 pnnSipqERI4jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DB7CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176278139358.3369.13843074663595901990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ac1975af370dfe4d49c8057df154774ec3960529a0492fd6d586f4cf4435339
Date: Mon, 10 Nov 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762781393
