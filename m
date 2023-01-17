Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B00E23A8
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 11:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE731C433F1
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 11:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673954487;
	bh=A1cZGbxVRTaZVij8Y6P56lyNa6xExSDaBMiZaQm/ZB0=;
	h=To:Subject:From:Date:From;
	b=e0Jp6dZfQshCLFwbWh3zLnFkkqIBfJ3tyLjOm72NevZR+KassNOtw0r6c01OCvl2i
	 i4e+7nrZcL6my2T4FMAVifJM7klqd5TSdKCw6vcri/SO0/jOZYTn0tFZ0WshN8Y6FI
	 oNPp509xwA4e2LwvtYXj+JDYn5/Lp5YTLZLZOzy9y7MRxKh0KOdEfVGkgixu7NNlt3
	 2wpQiyAwU/zoq83sHh4lMQZZN10CXQmqUnh1pCW69ZYhnsscO+aUaJpobqyotKBLQT
	 jZlAPE6rd68biwTal643tO/lKZ5/GjqtStl3kBJ3ipatJ4jtICRXE4UMCXakPezNPG
	 Rnefn9Vf8LYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6B8C3DA78
	for <ddprobe@lists.linux.dev>; Tue, 17 Jan 2023 11:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167395448757.32414.4660240808236103937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 722f35379a02184f5196dd870910ecfdde8068c806672456bf19f6f0c3413fdc
Date: Tue, 17 Jan 2023 11:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673954487
