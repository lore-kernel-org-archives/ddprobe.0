Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E106033CF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91932C433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672609287;
	bh=knsSq7i/qlXjfnT/WcclE6hiQoj0hanXl6esZ2P0j+A=;
	h=To:Subject:From:Date:From;
	b=OSlWv9KCeIdbZI4nOntSGlr9pEnRgAGF4autBRrenGFzX5AkxeSnA9bAdhu2tvvCh
	 FAZ//H49icPUXCcGh2Q7y25f80g364sLoxrG2Wa1nXKq3ofx+ajYfAllljpGqPR9iJ
	 nZ8XBhcQIqPjDZTfNxJtl0jDmWl5xWqbbwfahdXt8UGRPwoMPQ2ps0lRVd3zqOuFIe
	 iWi9jyMS9UXaOBPblNy98VNlDeS4GyY+foDdOG35Od5n/JGgGrtcXLA35RKthZFoHb
	 p7NfKJCZbLsLQHLiBnY8Zn95j12c5LC/AhMCPoGaOzlf1OLvD78GTuv9yX2KYHQtd2
	 18yyBIw+lnshQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7353BC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 21:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260928743.2430.9839427793391655245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45d8227f9c7527dddc66fabcbdf8df17e7cbd2bea62f7a138ebccd214f52ed41
Date: Sun, 01 Jan 2023 21:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672609287
