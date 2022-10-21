Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B08A37E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8C7C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666315853;
	bh=wDwpLAGZPyL4EkirA3OcdRaFao8CleJUJqHKoDScNCA=;
	h=To:Subject:From:Date:From;
	b=BaAHRbpezH6cp/U4FH6doWWsjCaGhhE9fdNxDDSV8NDnezG+vj09rS4QwQ6Ml5Akz
	 blQ+S4U/t65Zkdf0KQJuZMO801QDzXaOwv2kgX4xEcwcute0ph6CRr9a5ilro8XzqR
	 3qsZlcoXf30+Pmc+isyKKFN35v6SibYbO4AGyCTxjwRi9YiiNm2OnGuozKm8ZfRVSM
	 Phumn9LJ3W3lpHBvj8Dt5a94Sr6dRfFfgKA3s1x3s5wluH0a2jAP6I1w0UH1OD/21P
	 OlhraqCg8CA/zRA3e+99HuihbcOXA5COhdDmYFkwSUlXdxwgCU9W8fZMe2EcbqAXLH
	 9bX8ubSlFS4Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5142CC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 01:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166631585332.26547.11448637736440746891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141454050613b625155198beb7d3c929ad189fe124ec5706ae73e7aac289bc17
Date: Fri, 21 Oct 2022 01:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666315853
