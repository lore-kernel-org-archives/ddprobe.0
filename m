Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE7B11110
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730E8C433D7
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666785053;
	bh=v5TDemSaop/Hex0A+8WrBkYwhueUC+T9SxJoWMrywcQ=;
	h=To:Subject:From:Date:From;
	b=fTcsPz05JiZ4L7CGwR8Akfv7ftadxPi7OeXN5E0KglhRkxCLC3dTyFUNz1vQ1NU7C
	 25MDhJIV0YTK3nKXe0tme0RAR81k67/DCE7Ab6bgTUbSLiAC1JYLpUBtw9mOO+WbLb
	 4BJA2KIxX3Bkvs9HGUajz0VnkwmtqnV6WDWEVIdmm8Ow4nhDDbz2lKGw/8BVS5Hyo/
	 9WfgKw35HavKJZWE4woq7U+QxqJwcAAizxe5xavI7brcGJtrzGjTBjXHOOXC7EiIyW
	 lnRZ7zCVEfcv4eiEi495lavE6YA5RY9NQ2mZKMHPODde1LekyN+aHO1OcMBje8ImHY
	 m/mWI0etqnlkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E30C433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 11:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166678505334.17854.17294540210299896516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb28a510b6b6e0d43ad6ce35d12c2dca4f13cb7f53867e6f4a4545dc88a33df0
Date: Wed, 26 Oct 2022 11:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666785053
