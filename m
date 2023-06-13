Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76C181844
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBE9C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686638165;
	bh=AL3u44ejF2xrZrVTeXolzDI2rrb6sEhjmoKjCfcvF3o=;
	h=To:Subject:From:Date:From;
	b=aQXZPH6DT8cT14+r8gIOwHKEJ7vWJJX7d7tv6g7j/PEyKAFcrTRqoI32X/lzMrcTs
	 vSzCdO0AzLxPN7l5NzACtD5n2OqVQ4o6VQF+XGKpLWQxm2PkJVRSM+Qlrn+t2ldKZl
	 CO8PevniflJw2Awxxleki52ERinhzZqqSRqfQFSHNC/iWEDIqi0BR8LV8Z7yZqC0Mw
	 87C1upDI9XhmdWzdVzVSJ3k/5vEm6dfY/Av8CISiWfNr316MNv5nuoHiMytwzoK0N2
	 2R7UvA3fTHeibbbs0B9xwOhMZ+xx72LEJ7hjediVt4yf1DPdYbtmozmBotxQgbG9WK
	 COCuZyZDRShLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C41C6C7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 06:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168663816578.23185.9781854936573547278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7ed9b2e51e56533152c4f1787684d6a8d3f46104961e5468ce34ddf25e0e46
Date: Tue, 13 Jun 2023 06:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686638165
