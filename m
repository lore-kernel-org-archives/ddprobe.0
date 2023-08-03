Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A66B187B
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA48FC433C7
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691031128;
	bh=y63UZJbUt7zdV6PWD4nH1lqZvzk071DKBCRFCXDxw6M=;
	h=To:Subject:From:Date:From;
	b=tE2Ba/AEsEC0E814EVzoTbbMX+UoWX968mhLNZdqghKxDu2c1oM9YEmvedlqfVtJP
	 F90Yy2VINzFMs1Ea4mY9v4sd+fClYjb8rzXMiAKkyM8gMKIQTuVEH22ea8PrRtWcv6
	 IpJmXutlbNA8PQuU8prju8vChToU3To4WHHwDsI6WzYb87qFqjbm7hjozul1x6TS+D
	 28Sabwy2lRNc2iGzsnZrajWR/N6P2cKggffqmkbMS9Z3HOpBk6d3xfRx2hfg7KIQ+w
	 e/YCNrNVgn0yT+2BVxYN/SbW3dF1nwSrBN+5akd4w0B0mg0OsLQd36ARvqNP/qSm0i
	 cEu+a5A3sCZzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9BEC001DE
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 02:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169103112869.3012.3571420727680020415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21fb2cdcd9dfb48867a9d9855a8876f1e0b7e0f0006b1d17a2b684e633c5afa4
Date: Thu, 03 Aug 2023 02:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691031128
