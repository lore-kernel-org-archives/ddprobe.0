Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623DF23C4
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F06F0C433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681658226;
	bh=jZw8ORxhzvSrdMSi5WC0I9Jyi+X1r1QwwmZU0ub/7+Y=;
	h=To:Subject:From:Date:From;
	b=ZglDc34Mhw9NfPT8ho72NHRv/Iqh2qred5i4M19xmIsIz3SadQSoM0YtDmBgbc6hQ
	 1Rascw1sG0EgaxohwIAhfcmZBcsrtS0pQBivUUTSW5o5eSxHq7V21dCMo0EBQMdhtp
	 1Y+lhlcHSb7eoPh43Xuy0P8uWkpF2KCBdIN3R85JKTiak3OIlomcjieGQ5S2eSSIWP
	 i3j6YUgqGz9sp85T6NNKo6Nk3al4lzOt80fmSErXgTJTiUfUmHggzwbnFdL8j1yPp9
	 fX4npu3udUU6k5EUxvheZhSfTbsTk7fk/ZkmAT6mG9ZTDis8fcEnsx18zJVdM+SNUN
	 G1TEeq+T1wDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D70ADC77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168165822586.28444.15457342683995427387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ac18813e339eaf81bfb07b16b1a334d17f3817dfee33f8d9bccc6b4c19e38e
Date: Sun, 16 Apr 2023 15:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681658225
