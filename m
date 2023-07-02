Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70CB23FE3
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 19:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1963C433C7
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 19:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688327708;
	bh=ggwKPBzOFKCFXnvXryycsZArm/y/RyxYwjOpzVU/ZBQ=;
	h=To:Subject:From:Date:From;
	b=Mvdtwcr3wLxuwIHyVJsXzsTUYE68BYqF7hoeOJ8MqexZx9/DyJJbmvagUk1dEuCle
	 jhqF3k5aDsJuw5Uvtj/njvYLhgOedR2IJiMP709QpzkdAQ7MbtYNNgE6/8dcmz3CTp
	 PAzGAIHIvTSZzxznHPQcTlw/wjA3lN5KqrZcrE4gQxiTHNG+chz8vuCS41VqTPHpdq
	 EV24iU2XZlQ+U/BEQjfZ8iRamnewU9J87qpHTlyXRYbGgyt6ekk1iDzheuq605OdPV
	 Ry3NInmG95Ad7prLVKm4RXHl9ifob68nldAW/GtAe0+bUbhAvEFidT4nhoTzOWompi
	 NLZ2VULmHxxtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A6EC0015E
	for <ddprobe@lists.linux.dev>; Sun,  2 Jul 2023 19:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168832770867.23009.16332163072750587010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4072839ea683601d91e17cf436031ce9f9abdf2f89fc1a3aaec1bbf2d04d6151
Date: Sun, 02 Jul 2023 19:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688327708
