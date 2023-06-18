Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B74EA21
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 06:30:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36DBC433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 06:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687069808;
	bh=Emq1YoK7ji5DYbNvH7hbawAJ5eoK8EOix3jXRSddloY=;
	h=To:Subject:From:Date:From;
	b=l6Exp61dKtKVaD5nTuqWV383bM/xpr846n+9yrLgdFw5qFSa+WQIOQ3HM8uvLKfph
	 TZRQj6e8R6FeFTrZPL5bLfpyDLZDJHcadgnHYd5OPzfP/CbAkJ1dk41Fef7JGapuoy
	 oi8UXJbaD9SQ0+aFkBE+DEP9tAGLzgmgR5F0hsL+2H5AXrpWu4M2T4hmvIi+LPRu23
	 fxrtmMumKmv7sVrFy73juBrZFVtYMcwhkmYUs0R/iNoCwzYd4zKCY9uf1+wT1uqmBv
	 MQ5N0CDBiXTicF4FAtKEk4khbcMZWq6F2g2QpjG79WwUxmAEpdRUCyhsIJTV3W2L77
	 R8z+zkUSuvaKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F96EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 06:30:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168706980873.18173.14820132275575877802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2318a51e5ea2cc174c638ff9bf1ee11f0e8e30a7ac98d1b2ebb5c2bbed1ce9fe
Date: Sun, 18 Jun 2023 06:30:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687069808
