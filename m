Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC27A107A3
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FD8C433EF
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672957287;
	bh=T9TBEumW/Xm/9mTHpoBtpQgDMubsMxaC8y2vhIiDvYw=;
	h=To:Subject:From:Date:From;
	b=kvV4noJ+gpWR7pbyUswvxWAoMbx9IN6DNE89TSygaTqimb2KmgsoDHfiq8M7pydpi
	 HydftnMIrm+FzZQlNh/yzGK/ySMcAxHpFxiJcZoZrScGyZdeTpHZ3lwifSlr6sAm9B
	 o/cZYUufQBZiOTAbSEp09ID58M33/rBhRP1gKANgvzVMvQ5tnWLV1DfHcdp1yw2ni9
	 hioZFAT3aqT2teSKZwRngyuY2oKEyaoxqvBDwYMZdhp8Aj0ODUUekiXjwElwDm1k5U
	 WyD4OJ9NQk57EY+WXJ9SOUyA3+ZOxgGo77eMXOmWDxT7RMYISzuJe/wp7Mp6q5OFAz
	 /LoGZI+azmEVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF80C54EBC
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167295728737.20610.5061265343200854494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786a2f048c291cbd7ca87ac511361ac92bf4200b36c77d3b6f42dc73c39fbfed
Date: Thu, 05 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672957287
