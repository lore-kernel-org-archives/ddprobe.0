Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F512587
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oG8MUjN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 832C5C433C7
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698226097;
	bh=pS1wRIHeUUzdNOpU5qoy1SiG+RF6de4CymUZLZUVMGc=;
	h=To:Subject:From:Date:From;
	b=oG8MUjN2a/3p+jOJ+/zFaKftvZ6Xp62MCO+BMUJrg/h5Yi26rrCPhUyTE0ngfSb9p
	 KPaQVjWkNHRZ5jOp1vxRPm97kOivNN3xAWmE+VeQAuLFZ2ExHvIlnZp5fYo3czsS1I
	 R71ox3tuRPYqDfQ+yqrNFjmxpB1T8xsJI/wTKKJReH/FlExw4QBmsvVvnnjSrSz2Vh
	 3h+vWpNbmEkvYnEI5bKWijaPsHJA5Y9utvdERaQGmEP1JJVjDBC5ttYywihQDgcQ04
	 PPCy1quPIiJW6EQ7gzfJzsOFZEvRnRUd/fcQyRXxXHvNKlf3jAl6AosQJ8+qJADGMr
	 wRVVFxm16Gg9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69DD6C25B47
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169822609642.23734.12015716587650203720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9846e90d7a4eb6088c08e0192b9159c782450ae10be626426784d4e9ead1be
Date: Wed, 25 Oct 2023 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698226096
