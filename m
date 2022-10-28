Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE709BA41
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E37C433D7
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666998054;
	bh=mzSNUzKhPHv2SbLpRtJcx0JftsQzAzc0KYm/yu/Ig3o=;
	h=To:Subject:From:Date:From;
	b=HDiaxvJQb/1sUiofbR8oDJ+UseHBLjXOONQFkjiI8BBdvqh/mSif+7Gk4zKTmCewI
	 N0BNH+eH42qvscZdu5X6DtdgRqLTGYf5YaaSJmD8dEVZ67X4PLSp4dNq2y3nMgK+to
	 Wj8xNaEuumXvzPlPKwqnUu3Ic11MdKTJwgba5E8tpxDQ+MH76xYo7PRBwXcuTaVO74
	 OpnrttrrzfCk8G2THzXodukI3dKjob962ntxZ2ywiBXs0lI9R6B8v9BydxFhGptKEl
	 bMFJasT6cy4V4kgEFqyFgVNIV+2D341WLslN9hzYrus/8nP7vrV2INfoLRCjU/fAG+
	 4UJP/cd3CYIKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85B6BC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699805452.32537.6925028386277748990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a60d73017015d6c6be90519aeac4085e4b17b820c194acd146e381a581f0284
Date: Fri, 28 Oct 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666998054
