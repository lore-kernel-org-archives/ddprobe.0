Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59B369CA44
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 20:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7DAC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 20:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696278968;
	bh=87w3F/BM8Qr10mqCwUO4hBonVw9KZ6XVsGROVBxPENM=;
	h=To:Subject:From:Date:From;
	b=kt+TAPjFJVr/1bftREWwnNgSv0yv6Xcaa9pv27h5n0o22fSqpEJlHwhkhDdmbeDp2
	 Li9g/toUSUM9iKIDWXswtvc0NmljZy3ndgMNL5ZpkB6fEK9sN36tqj/c90L1eEVZ03
	 x/lDChI37hHDuleKm4KQJW1yyMT6iPz7ZKBemdXAyMlofttd4E2trxjxhhWEVy3HmU
	 pSM0AoHDmWd3fv2+7S2O1RHTEXSKE6xsm/MpJDthgwmTS/XGRUm8l7GdnHsBwd60Nt
	 DlSbcxSc4xIZDbKNC1N9gIqy5CmfJCR3odVzZ3ghL7+t42TQgtELq19zIJOFKaZ0oS
	 iH9vecSBA/yuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE741E77361
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 20:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169627896870.20704.16679795645379293135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1012ac22dd955e5db7f8e8870939cbe92d1d14ba518b4fb1ef11dc7a62ebc1ae
Date: Mon, 02 Oct 2023 20:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696278968
