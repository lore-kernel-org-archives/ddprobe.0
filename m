Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B47792F43
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C193C433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669635054;
	bh=w7OWIlBegRE+GimXnlEjHNiOUfb7FdL5IW739cp4hcc=;
	h=To:Subject:From:Date:From;
	b=LGXwwdannpx+cbDZfD8n+f1cg8bMWVp+/EK3LBVsSLC0sWuD3SydTARYAgpTOTOIN
	 lF+FrAv/C4wckt+VIf3vatUoRyt/IIqWIu2Sr9VrCEnIGk8azuoRxApBCu3PSvwna6
	 u0JRhnM6fidriqasyz9xBu13mNJUMhSWqsCtTDi54gWU8pt7JAtg4LdwlM7KBHDQJ8
	 gzsGkZt6Vpjt2/FEGFzKLx65kItX96WHahsaEN0rKZ/zJcI2SJpltYsgEMarszIVFK
	 bA5j6gW8454vFWJ67xsMBf5vGHGh6CYq8Me8i5Gqv4IXsSJxpZ6WyPnsiis4Yc7ie5
	 UaG29Xdq9NVEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54481C43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 11:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166963505433.30208.9754007231730925648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79a7bd8c62e6e27c13fca655b5ad6344190c9b2a54d9ec7ddc74efe30d2f31c
Date: Mon, 28 Nov 2022 11:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669635054
