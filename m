Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDF15622
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CC4EC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662696653;
	bh=v/Ku8no9mEA+dbF9ckQLunqO2KNP1DW1hlrNnZcZ1Ac=;
	h=To:Subject:From:Date:From;
	b=XNHsgLzL3i03uTWt0jEoPowc5uUkZsyqPv0xRa+9DrX4LX7GZmuVw231fNz28194W
	 HO7dxnBiEAvO35fYhAyARBib3jRE0WcRzlMmCWwUWgV7X27ru1maxFPLj5ksHaqBxN
	 VgSb8+JlxOZryHW/t+BRQBm3zjnhlhDI4SfKZUJCrO3gO5cjuTXaNXkUe3rPGFD6wS
	 L1y/VWPLvQdWiadoGT2v5YGeWh4JO6utyVnuuYgGP9AhpUM36yejhLlshEO10XzZw2
	 wkwG8WE9sukYVBTtgTRoxmmocU/RbAU28G71x0vtZ3u3C0+Pr99C9M3ldGRlmE98Vu
	 7GBKTUIWdY3eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53090ECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166269665333.19445.9313896667462507713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a9d5928370fa8738dd41b6adf995c6d6d650f5fb16f3fba2a75668a4f6c4197
Date: Fri, 09 Sep 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662696653
