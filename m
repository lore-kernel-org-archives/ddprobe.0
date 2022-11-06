Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC8043209
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7127FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667758254;
	bh=dbLzRNpEZ+rfy5ZcUfAEKDBNX8+Pb0HVW1iOBH/9cVE=;
	h=To:Subject:From:Date:From;
	b=EHsJiyDs/lPXLafY0CLxDbGVewcksJYzNBRM9UAUChZTzUvJnR/NtsQeDdX0G4sPl
	 6r7pQq3V+qmZZr+pHsGFfhmo+dKQLzfvDl6dWFpL/u2FGKjcGhMP3mW19P7l5fsjlW
	 yE+2Nyf02evgv9N2ZT47qzJNYVgaWtVbiM6QlqJ0hhkCjpLA6x6YUYC5Fdec1Ol8eK
	 cLRL08yUuVNc/gKtR1rSlb5o6OkuT7uhugp1Kn9L1754dJ4qWav35EWGNYqhppHIwc
	 bLNdEAvk07P1Ggx5sMGIsz4jQA+M3kdFej4eWVgfYK7gzlqtBIM5dOCIzce8i0Qf42
	 1VkYR3OqewuKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5406AC4332F
	for <ddprobe@lists.linux.dev>; Sun,  6 Nov 2022 18:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166775825433.20618.6497553598549440406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273927062f809af7fb000bef5e4f8b18720b02a6c67f8c6c65a90dcc29448268
Date: Sun, 06 Nov 2022 18:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667758254
