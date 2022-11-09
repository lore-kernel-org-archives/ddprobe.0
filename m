Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC88920FD
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 741FFC4314F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667974854;
	bh=UQm2lj4X2KUTwGQ3MpStptuxWoEdmHyP4nxV2vMjLiE=;
	h=To:Subject:From:Date:From;
	b=AZVO01MRt2wQHwMnMNvfUymG+65Xld/9t5d+wQ2u4e+tK9WMq5QgQvytGsoyXlfkX
	 +oWzatxdWEIBwpkHu7UidjuTv2VxpMdfGsGWY/btlXGO9jgqEOVRLG9WCeS/rpe3ZA
	 MdGcu752XSEFloLI9pPCknCKtDWrN8vp/J//dunfWyRjgo9ZD3FPfVDnTudjufsHpj
	 iso+ffd7Ag89islJ8IAhyfr0XrQQ6iX+HjHgLjmmXi2bK9q/DBux67AjJZiJmzAg87
	 uJXS2Ey8ORKLDqk0Deis7axvtlwj+6KUQLUBnLyLEIseG81kK1IDphUvu4VER/BjEJ
	 KF4Es3Vp1yyrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5374EC4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797485433.5838.9343523298561134437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02dcb92ddf2c23088b2cda781a317e0e3f543218073fe8631749cb820af2a238
Date: Wed, 09 Nov 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667974854
