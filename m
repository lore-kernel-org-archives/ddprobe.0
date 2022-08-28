Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D24AA7C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76739C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661683852;
	bh=Dm+lzF/DwKzYRnyZuvDpZIFph8DoYSdL5e3LSk3llr0=;
	h=To:Subject:From:Date:From;
	b=d04t+C/V2TGnX39UfsD0U7+gIZ+bny6DXtJluNARLPmmiOBk3ZE/nfWBGdygf3wqE
	 aduUU1uGY+QzlAZ9QpUUdnYkzSwZoptO12RRcFaIicfuuV5cuuFdIGvHPlA2pT0Jnu
	 bmC3QCbZFvZEe/vWqMLobiMQGWYiZAw2ApIenJsy9KCxAR8HBhjm0tFTSsE06hHQmU
	 B1JcJL+vungPWtiUJnRZZ7/trL3NG/sayX0g/UCWZ4Af6PuhwxsgKfdwSVY/+X+kQo
	 3u8cDNerhDsXVMfM7omJWuxKu366wD75mqyXrBsZy7yzU+5ML/uO4WD6E/TlEK1CCn
	 8hxoc8AMO9SzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B59BECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 10:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166168385234.13743.12117759639092571250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c012dcff4911167727651a4f2eaf9695d0281b0ffa1b2409b8a5479ae2f14406
Date: Sun, 28 Aug 2022 10:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661683852
