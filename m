Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DE23B3FA
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 08:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E103BC433D2
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 08:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686213785;
	bh=iIYNK0YDD8KjhMM+vF+5Y3+287g0KTL9rVBd5SMrzLU=;
	h=To:Subject:From:Date:From;
	b=enlezfavR5czgylxU9UMcmTM6Zt5CvCbYz0o8sFXaFdv2Zrq2EMgojldobvbVJinv
	 6sB4pSlanvGSrK3Wuf+0p3mEbLi7OhnPQnIIUUWWDDsqduKZa/UADJnbCeudDD2Qc5
	 4PGhXdqODcUAhukU+WC8rEBh+cARVT5ptLrNQmL2SfHdKuu87wmOv9gXmqIjwiwyf8
	 IstKg/NIpf975mb3V4LWg0kEcxyEV3I5Ok5HRIBBUKYioo2nhJc2IOY6iP+IOTSPM4
	 18VbyIdmCh15sOfoPNBMt10CYO/HxXwQ9NVeR2heBsOit9JINC3E5F9JN9DfcJIZHN
	 ty4XQPE1w4EZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC1B9C7EE29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 08:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168621378575.28054.12090552992309160582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1043bc59112cddbe90fb519a531936b32cd62e16d97029d1ce8a854bea9338
Date: Thu, 08 Jun 2023 08:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686213785
