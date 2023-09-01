Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FAA4199
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 00:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF53C433CA
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 00:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693528448;
	bh=/LndSd2+hH88K+L+1a5FIIEMxZB6mTMjPDiwKXliWsQ=;
	h=To:Subject:From:Date:From;
	b=B9+rrUH/Tdqrea80TtFdtaaJO8mwJnXflFInt4fOxIxJpgFQi8OamsM3WazyLEZgc
	 /aV6giLKTJ+2INXTZTanorjPrArwJowGx0N2bV553xZrSoGZsHw31CHtILuPcbVO9D
	 8sPBiuQkQbC0i5Pa2laew9XacWmDfwF5Q/O4/irsYLG3Jm/3iPE/+99ukKYWksYQ8a
	 y7miAL0R1Yr2I9aocK9v9VuqwTgoXPM9VulVbl707IMITPgf4fRIUwq1wKWoEkSahz
	 TCZUuXxogSQ44zjA9Ur/RV0UIiIbxEqfwj2dzpBbA5xY9eupYiAEg3kWwD3beee4Fd
	 fg/LaPEpFxFDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF07CA0FE3
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 00:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169352844869.13049.8441753260911064558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6129ac643209d370b1c03a230964914fb454d2e2ea66c42a288a6501a98df50a
Date: Fri, 01 Sep 2023 00:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693528448
