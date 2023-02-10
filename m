Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA0F7F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CD5C433D2
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676005385;
	bh=rpesqdv1SzkwQrDhYCCVVsVJ5RKtWeZyRB7fF27edVk=;
	h=To:Subject:From:Date:From;
	b=fHcJ7MYvvahpQB+6B0VspH3vU8005HCjbBS/Wo6UUh1sJD9rcELnl6Kl1TBKsvsDX
	 6WjIUqyIF0oHRotWm2eeGYzYXDk8/aYNXRU6IfV9yTSAqA54ncFuyJ8B/wnpAIj7ol
	 2kD2Tjd06f+wDfa7HWtPJxv+hTvegusYHTm6Zl2JCmoOsNkwKm0ND5j4QfdWkKqnZy
	 V1s6eDYBEW2PmrvBAiSn80WBbd3ejnGdlCKTLfAEX/L9dgQGYP1dEtle7LNivM0nQI
	 /uYydC3x4XzvI6BznVkbF0xpoWOBYtvzECATWs428bkm3jUB0U3xt1MvDkmVX21bbH
	 fkSnBKOCwVuhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C626EC05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 05:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167600538579.20033.10929478673568867516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ac87926ee50367deacc7c342712c3c09bcf0b1aa42f8f2a8be1425a1eda1a7
Date: Fri, 10 Feb 2023 05:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676005385
