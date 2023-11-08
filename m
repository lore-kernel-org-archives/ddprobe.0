Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0521017727
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 12:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuVEt9gV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B7F1C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 12:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699446496;
	bh=uSTSjqaJNBmYYtnH09MzGdgjdoYkaC5sfcWZPoL9nSQ=;
	h=To:Subject:From:Date:From;
	b=CuVEt9gVSH12vfl72+KNjr1sLU0b13XirwYwJgUI7ZCNuaU8wUNP/TIiQb1kXA29V
	 845JzbjTYmxeGYjwZm7hR8Tw1sbe0U8RX9Jc3SAUJ4oWkr4UJOoMC5wzmVnzaLDdFb
	 +//+Ox3i1lXNVkmzSeTnd/CTGVh+Y0jFl6kMEOFwfisFE4M0XZM99Dtzhbr0NvyMH8
	 tElLkwodqdmrcDOOcaJGP9+1w1AU1q/w7hBE6a6FabCjGJHBsYBI+CvCntqYtZjdvz
	 jxxWw8orMNHD4Uvwx9q3Wb6Wclk1PuU2eJcuhIifXTJdEt8p+UGGjeYtSimpOrGS7C
	 407Gd0qTXsxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61312C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 12:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169944649638.12854.8090086790441358555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7fa5bc2b58a245bc54289f58828bd74d8deb6ca549388b6a5d4e82f3327fbb
Date: Wed, 08 Nov 2023 12:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699446496
