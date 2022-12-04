Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD2672560
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAD1C433D6
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670145054;
	bh=kh8eNkGS6Ay70JoyYnKaiksfBLc3UsJ9upQMQz6klAo=;
	h=To:Subject:From:Date:From;
	b=QtI3RkChSrkR39TDsO2fiMawTp5yHlBLSTiH7HFQQdoynPDjHGsaUzzRFBvP96n0w
	 yS1h2oU3YmaJBO11lMCSEWd6Jj0WxtaHx05xdJbhkkRDAbg6pQKM5f7cF7gJQZ0p6u
	 +o7dSjBHjDIMlfz9lP8thce2qvNSnFiqv4TDRVaugdTcnXk2t0t7F54EaUR7EHArcd
	 u0FNBPNuRGsBhH+BTVoK/3wIWjvD6Pj8F8saoqZQGOxa9IeT4XOrRB7K+A8UBwk39g
	 IkZyhm1gH5mZuv31TU96loIkQmkEr2jQ3OAjok+HdtaAJpfb8BXAcLKeDGDL08UucD
	 su0gPXCOoxSIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ACBC4332F
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167014505439.28683.11108797269125452138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aacb60154e2269ab794f6f92ab4e0870b3482758f3248f2ffb01be46bf4813bf
Date: Sun, 04 Dec 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670145054
