Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412F710956
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:25:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5EE3C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695626708;
	bh=hW8uJAQl7AiRcSSewYtM1J/fuQsEkXObll4DMZaR+Ic=;
	h=To:Subject:From:Date:From;
	b=eWty0BWLiNCjcxvJnN+S8t8npUiLhKlq0jEBS1cKRl61SGF5crr6JhYk/d9ju7Qnb
	 K6aP75HVSFDn0nGQmYimM6tvLyP2Of5+PcGew2FrT77cTQvLTLyRI5L8zh6uiDzFTu
	 kmftzkH1i1IHWym6KMh8+Gk02jlBtoSstRMzmpiPn/CeIqTx1gDj0jkimDavisDS9w
	 ihD648wfFhnEWA+nNqcGDHbuKvypCCaJbGFPN5t+Xy6Zes8jU5StsVN2s2Ok8uPj/i
	 LghI1S0oO7xMIzO4CtwMEu7YnS3LE5NMalygbTSvakLTDl/u70PU+CIgm48E08QZqi
	 321xqoOvKPYng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AEBCE7A81
	for <ddprobe@lists.linux.dev>; Mon, 25 Sep 2023 07:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169562670866.18405.17422885805714403648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9437ab2612dcbff359ff15f4caaa7e60d5333854bc140bceedb70f8e277e7d0
Date: Mon, 25 Sep 2023 07:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695626708
