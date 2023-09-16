Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ED3A1102
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:35:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C90CEC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694903708;
	bh=bJ+TsxkE8vuczZR0RH15F4jfQWoyhCCJMXRPqJpZ+yE=;
	h=To:Subject:From:Date:From;
	b=hFibvSrN5/faYeiVPMIIq7wJE+qzqXFq5Q/Oqrh81+bWtfi2A/DZlX40oFqDBv8at
	 Wydtt9eNvajFaORcTXvt1wh0fOae6e+KjRlzMKRnbtWWh2zg7l1mFWe2os5Rj7XeYz
	 lJ7t4bOmAOY/8T8hNCKxZZXD5de8lY4fFQtJulvFkPGZWWE41ueJCoea9zptEDMotj
	 dMDhp5e4IWklEn78fovAfzrx5jJj+QstDMjQfDkrAw9f9Y3trzYvWGkuDeh2zhZdhg
	 im7rTT9kV+6IPmxZKtNAHWnuCULMxhBuCj09lY2gNiW3A2vyVvMz8OMgjMG+OlOB78
	 9QD6atTjayB5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD821C2BA1B
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 22:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169490370867.24028.14927783244095032829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00769c32e5f4a681410835838f94ff388ea511bd2d4e65d17a441b105a0dab45
Date: Sat, 16 Sep 2023 22:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694903708
