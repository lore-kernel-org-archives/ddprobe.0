Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB35219F5
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 16:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZBj9So5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C921FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 16:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697215628;
	bh=3TnzsaOrYUYz9Xnv6Re4KtuwYTrkoZsyLd7SRzjtuOE=;
	h=To:Subject:From:Date:From;
	b=eZBj9So55TqjZvja/Tbi0CqVkzYxBc1A+ngYOL9C7wl4QkIuslcW9avwL9617nasE
	 u1Ik5RUKwon/rpM42SUTvCuD7i63y27t4lws0stOb1pbYnHojuGx+cbY22ee3t8bPp
	 +6+U4i5s6WvVCSnxTjjVcwtD78ghY2+B79T4+5ZtRvYUcbQXdMzYBcpBM4Oym+XnUG
	 AUOLmUq3ba8TxdZs6SjrHkZE3TmCmEB6gBo1pydkdFxum2FGuAUnWNv0xy63jNgjYf
	 P1UDLBrWnLZwXniODR85v4x+chO0cuckU5Y9VFrmRrXUCGW3g6sdzKsStdYcNQU54x
	 kKPLujc04VvZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF69CDB47E
	for <ddprobe@lists.linux.dev>; Fri, 13 Oct 2023 16:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169721562870.17988.14951602417709318944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e46a45e1d8c947a10704a98f59a7f4aa07e27ba8697ef96d91ed6d4ed6a16e0
Date: Fri, 13 Oct 2023 16:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697215628
