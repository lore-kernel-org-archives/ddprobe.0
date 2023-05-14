Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530D210FA
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E83F6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684055285;
	bh=J95J0d5en+oRB6ZJcJZwwSTzKHO/CxbiXwUjxa8Jis8=;
	h=To:Subject:From:Date:From;
	b=l4X1+BAb52kGj/6qZuhmzkFE51pEA5hcOjyDZZr0Sc4xsAbzjYARHg9gjlsijweNu
	 m5fvhA2SDgDKQBUNvirIpGmwhES5v2lPJJCmCkN1HPBHe8AgnZPW9hDK0l4UMDRg73
	 iBhk4Pel47Wvl7U+Qhqu0uKGqjWi0cZXmOL5xcUFt5Ym7DQkLBXEP6Z8wbkmn0dWS0
	 le7Mo6qPwuYsq9t/zavSz7D5cRG4J3xHyAmeAWx4uMFFCx3hmdGo84qJ85y78Xoqwb
	 csGEIKCNlBGgi2jRYcGJItmGFQSyUrDvEWoVWFEW5stY6eYftZPHTjkEaQ7ATqxZ/O
	 EWV2nBG9/OIyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C53C77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 09:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168405528578.12792.17772931108936460298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450e44a5d7e37b629828ddc91c85801211929c8702f76b154eb56d7d466f47be
Date: Sun, 14 May 2023 09:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684055285
