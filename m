Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D545F6FA8
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83B79C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668291654;
	bh=zXO8/sIkuorRUBm23sWZ9o0JMT2m4cktf6nNK8el10E=;
	h=To:Subject:From:Date:From;
	b=BpGfOvKiPY/nOE0c4/RykvS53gMO10ygzCFF8tLsA+BAnytaB/So/JmsRqZ3gTfyg
	 AzyKN3nk+3YvmKsuIB2wCCYDROE2YGpMClw1QNO0Qgnph2zCqVUHWqJpcuFRYzkolk
	 c++crPaRdW+gWiuNeyS35gQ1AQENAaCnwi83yZU0S+GLQBZyXyhLhpDyJ81p3fG9yE
	 mBIxIK6JvohNd+Em2HZ6dv8BMfVXA/Y7B0+pO3FVjZ2Syexd2P9XSYZkeFONXC3j5F
	 /V93DbOOHAyaDT6KazpSvlEHB9+9oRZQORiTBHeR4ltF9E22m5KRsTW0yhryZe8NDR
	 l5T6hpAvSjHyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6271EC4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 22:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166829165436.28064.4744612522294299551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f10b2e35bb000765a0651182283805df5b5c179dcc31781d7598d25dce8c50
Date: Sat, 12 Nov 2022 22:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668291654
