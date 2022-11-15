Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C8BAD47
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81399C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668521454;
	bh=0Ao3Vttek52rcfgUE5xclq1HO2NpXXs1lDI750pCl64=;
	h=To:Subject:From:Date:From;
	b=S50uLWn86yX81oSdAvyTckJlhD4q20mL8zYsTHwKQkxshjohoNFEDa53JRGIWM/av
	 J3wjGw7UaIKEE+z7WEyEWW1lvk5NtjBGVhKymIq+7YFc5TCC2I92UicCfeuO3Yin7l
	 0baJRQAtG/jrqmY41H5i6MHzdisVlogTpz84pGAU7ImJJwTTz8WQOLf1t7C92hlAKE
	 nxGtSDyuXUP3k5+VjAo1DLvQJu9TqW4V6kpAWb5Y2sATCU7MVaEIfI0Yk+aaj2tCPC
	 13s/b5AIW+/zwcbIncLbhEUyGcp2EvtYXHO1cUi3LACiKtM49MnSx6mFuxZ3IQc13R
	 tJ/uqw1I+yBFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60B3DC433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 14:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852145438.11425.3917243490468648665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e533237c75469a4caaf3fec5e067ab1f2c86e8442583f7bdb2d12e7ad3f4d16
Date: Tue, 15 Nov 2022 14:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668521454
