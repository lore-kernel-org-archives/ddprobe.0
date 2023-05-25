Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4081B101DA
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 18:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47E0C433D2
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 18:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685039105;
	bh=nQY5E/MqOYpn3ugGvGTd09cF+STRynd0i55CLmxpBRg=;
	h=To:Subject:From:Date:From;
	b=AncqFGVyOg/64mWhtX4FJXBicvRa7wkcXy1VpPUxIoe+abIB1BPUctK3GNW3x9M5f
	 4t0yW1ZsvLIk802Z+4CHiYG2bOXoFdVQvJj2Af5GmAAMjwDyv6W64u4nS7RbYh6S65
	 WfukUHHvY1SONsfMJ9tLK43eubvov+HOCvhz1gSVYuITLsfl679DOIx+X6xUwSVjO8
	 ZINfBTyK4fs2u2j2JN0Wabo0oJ4EWES7Q5hQ3s4gUSaXeLHmiNrFNgg5pL75YxdgY1
	 l8Fvfg55+cfm8GeCrvsj+/FirtgUaJh6v6bewgPMJsLCU6c5nlWO0jfiOwynpDCIVn
	 7ol2W1FUEqKQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC187C77B7A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 18:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168503910576.17423.9046855439689597488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44283461eceda41adbd40f8490d0b34ecf3b30c74257a6a10dae07e52be1ce8
Date: Thu, 25 May 2023 18:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685039105
