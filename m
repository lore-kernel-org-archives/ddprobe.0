Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4E223AA
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69CF0C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662355253;
	bh=B9KzgQCkBmdf5xfbjGsahmEjVPtXW8wbCun0TsHeIcE=;
	h=To:Subject:From:Date:From;
	b=AN+iNawCd9kfNtbNe9FPwsWBrucgoXhbc5E+OcubteH1D49b7FWGQniC9ETF11z+g
	 RWqWoVofEH3zn4cCuUbTywtI02Ztf666/tjKADO1hELjqS92aKKWsv8FCumFi+gfGj
	 2tC0WmkLlxiF54s5vh1THzU8TWSoBVxYXNHIj84sJ05hi8Nr03P+XZhBdCetCS2yFE
	 sWcgAzoPQ2tTDc2XGGcgxicBExQwqcQjBhEKe9QPIPdZmaB208DCu2YqVT2oEUWoN/
	 VrDLbAS68EKeUmnwW0zVih9S1MGCwEXt/wwAzB7Oc4j4QWYJW85C8KZKIV01tiQhYK
	 hISRxcTOqmiLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54728ECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166235525333.22625.2137982729309431501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54c6a107793045c7d84961ccabefed3047b4ed4b56a45cd21ba9382f439d6ee3
Date: Mon, 05 Sep 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662355253
