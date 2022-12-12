Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5AA823BB
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83C1FC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670840487;
	bh=TdaLXCgzb3T65B8WTy74i+k6WlvAlaThUbAap2zU/08=;
	h=To:Subject:From:Date:From;
	b=V+D1XDvw1MTFFT+ssIA1q0FxHsix0r7b7DK04DnxzS4U7r0QuHeBPx2ItwRFQufS4
	 wrTBi45PZDlPmmfpsrYLWVL7riiB6E/EvCpvuzpCNVU9R5FLrMLIEadyJ/Xnja9Hyt
	 t99vsMOkDt4d8E4Dmcf1YXPowDsV7NvWGWgpCl/4BT/xJkSDh4xShXV3Qne43lQR17
	 4JtCOzxXjYRauBXu9PG0aa02Si4AmhE94YCbiM8xU8RLbpXceCN9EgZjwNbJhrmf2N
	 Rd6qRtIM7CbYN04KOqsa18nXsYgzWosVGIGyhCHnAEMDo4FIN7wugwrK2QgzF7Ejvn
	 MVnyIn8S23g/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 648B9C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084048740.11025.2378015912626031848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e10cfbcf0ea9335166ab60a23ae3dc52cae1b92c0b3c9cb56245a5630b2d3b
Date: Mon, 12 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670840487
