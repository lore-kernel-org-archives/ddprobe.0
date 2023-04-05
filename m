Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281CDEC5
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 11:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC024C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 11:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680693425;
	bh=6nxJJYlEv4Ek4kL/5jZZEUPuylnisjkWAflFna4iAqs=;
	h=To:Subject:From:Date:From;
	b=K6lcBiVkgoAi9GglTwvsAf/IqaRNU7M9WWqswxINKm7KvMsXauetP9w/B/eDYjEid
	 mXbi+w1ccZIqy4sWEIpv3YLcCqlb2GKMnOf4XYjOs4P/Jpux3UQSUQUsg3QG6T6PqB
	 eb8y6AhSl7aQtmJORkCMkHm0Tpa2qTZM6zoxNZKfmU5gUcGw6GGd1AkOBMJ39Mfu95
	 fA3mt9UiIkUGRIfOJc1vczIoT+trWDpzi4zIthx6/j2/+7ZU4H9q3PFN/6slr6b6DE
	 6FqQj6IEZ3/ly7fmWTDvBxHOafmbxJ2gGjIp9DWi4AC3Ca8PEbpyeAlUEXI4Xz2pDi
	 G05yUKvt1fp9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3048C7619A
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 11:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168069342572.31521.13266930143857988116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b11d9147ae34881b87b11a3c9911e4cc67acd506155d44ddf621e394eb187177
Date: Wed, 05 Apr 2023 11:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680693425
