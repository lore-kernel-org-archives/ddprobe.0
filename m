Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320457F4
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 04:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D421EC433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 04:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676004785;
	bh=P+EfiLnVhgWe5m0rYdIiHhwXiuMo02s8HexNN+NxllY=;
	h=To:Subject:From:Date:From;
	b=Rd6Qm6d0dj2eAZ6kSLc3i1jnHQBh7n9/FEsmRMfsUJsTfqGkRezZOnuHu0l/VP+Uy
	 KAJQoi+DDD1ALazBq28xxwU2H0YBJzlCPl62M4LFpr2/AG5B1ywrbrNEWrsMdtJtQg
	 Mc+T/phA875HytlPPiFxOc3fm+6N131oA2vairYG/snHZJeXVPErIxo2X584LiYCEi
	 HBF+CqGndfz5OTH7zwXW1T2T+TkGv+ThE4YDgwMIBMUHUVRdX+B85X7SYcv8qNiI7+
	 IDCH00Zt+ZSQuMv3entWNIrXS8EXiFpPrm5YZ3V2tCJYZlEPNBuzccvtV1160zCOs2
	 4zcs/Q8DhU5dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8F38C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 04:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167600478574.22896.9440601510947989164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c743cea5581279c56e8bf26abac985bfa102bb483db4bc5506b000fb4947d2
Date: Fri, 10 Feb 2023 04:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676004785
