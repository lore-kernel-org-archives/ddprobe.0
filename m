Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4055E7F
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C43D1C433C0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687579388;
	bh=QT6K8O4y2zRJDmGOL+BrBLzW/0PykxdyUudZhzYymRI=;
	h=To:Subject:From:Date:From;
	b=vRAhPXNtw+r6wU1RTWSLrAOyDfmD3LpcaxS41MgNG3rJ0Za0qWl5xlyuHPJYzCvcJ
	 RNAQxb97Qn9wNmPbVEDgibi0xChotGr30VNwwxUpUaqK0K5TcBqMPGhtjfbPBNEUT/
	 xfUY+cEXT6hgq41PnAnjQu+3cWjWdhB/HJMZkbgp0ntLWLRC4o3M0244fOjEmzn32u
	 MevtJ48rsT9YnlBcZHichHNviI34Wovg5qg/64CYs5Qghu/dB+vnA4fd2N9o6r7AED
	 V6rH5Sys/NIeAYRBEANieojX7VT7h+XJ0bclmA23IT8EAC8jBqAtlA+SThxYnNZ/Ae
	 eXi9n+DzXyk4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD11AEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 04:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168757938869.2430.12192225825851116798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da366a1c4c706fdbfbda257396d62526ac97f9f289106390b9c254d0713ceb8a
Date: Sat, 24 Jun 2023 04:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687579388
