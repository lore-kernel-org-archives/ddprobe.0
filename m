Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67AB362
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B90AC433D6
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669615254;
	bh=+KgWIkxfhfIx0hDdhU8h25LhgSg3HxYhp4cVwAZkxzA=;
	h=To:Subject:From:Date:From;
	b=kbbz0S2cB2XZE9OdaRPsH/YNW1zGIOgsNALa614pfyCx9RDY5tPCX6T5cmpVkp2YG
	 NHrr3DKa2VV8/7wItMW8Rn0JQWY3GT80VFg0fLr66lVOZQl5O7jPZXBRbXe54V51GF
	 I0PnEHoJhjsJjEwHYVCrLO2G+1tRVMSIY8o0LxSw4UVYBYReT8nJK6ZfWdk8uyGwCM
	 MWlx36bqa+C3SEcgFKb/0jAf3uBKQ/yeNzVXf1OkL+EdP4VzFCut7E9977TOHM2RkL
	 LW6DBnMT908uYI5v0R/w0sehFMKi7kU53g9vUzilgQHC+mF1YKycwVYz91keoDeIQc
	 vVePlx2T+XEfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E94C433FE
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 06:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166961525431.2599.9342132930403386219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4b42f536e81c9b96a594fe7186394ae83e4a3be60e0c06791fc14d364954dc
Date: Mon, 28 Nov 2022 06:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669615254
