Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C0F15AA
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:10:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C852AC433C0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687075808;
	bh=RkYqyKHU2U+NGmmnosRWZMk/CF77V2EKfoaWvbHF1Ts=;
	h=To:Subject:From:Date:From;
	b=BnNOnN8EgTjSF5xEfspXKDPQh4cZyVyJpSoYzWLdYiKQj++T30Cdfx9PURPnOtdSq
	 R4u1wnVzMK9jwdX9kzwpHBQKIugFbUMaWRkGqmzN6KyonVWBoe/1cIeRzay66wAbvF
	 o2EI9RVJdRxntpAyemjLnwtnCPLdWYJ2f0jF1X0tlQI4aVGp3sPJomY8u2VCpuneZs
	 wzXd2bon5piyfhf7afWB4QiNZm/IHawIx+3+6h8xu+7Bm2nOXeUCvGvLO22FvqXmoz
	 iXBPVKD5O7ym5ibxwssdwC4CcrRR761I50In2bo/6L1Cm0uVgUoLEBiqzqPOKZgwUK
	 Q5Rkxw5c5sd9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D97EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 08:10:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168707580867.9227.3799347970401456311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d69c0dd1c04c6dd122daa2e105d13dab7ba3e4509383901d5f4a67cfd2299953
Date: Sun, 18 Jun 2023 08:10:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687075808
