Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF670185B
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99E98C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673136087;
	bh=mPPOcdRmgfFMFvQnt5zBZbp8uuCQ7RhFGcCEOQA8dVQ=;
	h=To:Subject:From:Date:From;
	b=fpTNqa0kkdbZQfnJGPKs50P3XG1t/zJIZg+KuPxmekVp1IsPjV5I1XQ0WyCPH4e0c
	 QE3K6OwQO6w4FeJY58Abl74lrBm8Phi1qaEjsAu0Kj4FC52zCxNQ8UXoxQpkh1gUnX
	 z2xUBlyaEyai2gwhw4SZgwstLsKmxUGSX2vvpnTYDtgmBOg2EThRhx1aCA0m/leyPz
	 gocwtJa1ZNTOyOYwijHZTPJhWmyIhRzBgyJTdpxdwqyUvRQFoA6smA1OCy3gsZ7mbC
	 jhmnHpfiKYUNmeY3dbZTDa02p9JGPm+Cbc3ppsbUEZ8iGVj6Cle5DTIDdx4U2snpNX
	 hQIV8y5Py+A6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F545C46467
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167313608744.27852.5087364119170874673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00b69f8f9bd7119b69928ef6d044f74243b46fea02f61423f8899420513e6d30
Date: Sun, 08 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673136087
