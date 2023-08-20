Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B70C10F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 19:04:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5365C433C7
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 19:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692558248;
	bh=oxQTWSNhr7qHKEzsX2M8T8IbUCXruAHnBqTBSsJjYaI=;
	h=To:Subject:From:Date:From;
	b=bMkKEDULY3JLZePJHZXIZebOpHMAz6GW0xQReWkFnPxPe4O7wGsRzu5tJ/r241dYa
	 u5313rC+RPk/W9EBPkQ2X7UH/Rl48gpX8+PiC3XzzS/SvGhKrQMlsXuN227ego5zKW
	 ougbA4hzxln+LQFj5Bax/7YiXx++Di3aVaGcdUZXBL6LXLg17Hd5KNVxn3iYcHLNLU
	 TqTK6Qw4B9t3BOtHsWYHtxenohoIKg8qTljgkQ/AailZr4ohHJTdi9HGPLqKvcs0Bs
	 o4LvfXzddlFjo2YmGqBpvLXLQ8NCSpQaYmMAY3+3E0eiDCcapMrXZmedY7OJuDRVBB
	 lTYH9LHu68RjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6015EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Aug 2023 19:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169255824870.19609.16544292679894550431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ada4bbeccc297536be98c25978fbccb7ccedf0e0f689025a13affc2fbec967
Date: Sun, 20 Aug 2023 19:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692558248
