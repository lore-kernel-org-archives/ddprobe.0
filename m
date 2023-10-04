Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB3E219E0
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8yjBrpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD6FBC433C8
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696445768;
	bh=daXFvtBaXbNSEGYziaYJsS3NdaFQyRSQqZzU4veOczo=;
	h=To:Subject:From:Date:From;
	b=u8yjBrpBtcdX45z5ljceF7HJxX/IGni9pVNLRyszXWNdpUE39u5fBYuDzMyZID0jc
	 uBde9bBh6xqebPDIn+l+s9CCSp7eoSpgWGKVU4zwByE75Snmdh7SujYS5tm7Ix+mOA
	 Rvuy+qg1crrPwps+sl6obhe4gndm9dic6kEK/XoXihiqhJMyvUQamkfhwBux53A9pc
	 kXFWsJ9aQ8K+03iZD/NzPnhnWmIWJmVBJ0Hhp2IYPRyMNgZg53SXT6Kac+dkhNMNzw
	 A7xBDsMy5lQk24rs47LjX9ILOakDWkclbUak+AyC4Q/InA/0gDwiNF9vdWLJlIBKHT
	 Ve5ctMADryMig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E65E7C4E9
	for <ddprobe@lists.linux.dev>; Wed,  4 Oct 2023 18:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169644576876.13090.15854153291080547550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50419bc5b290420fd2e7739260b24124e43482062712ad874c403a77dca50c18
Date: Wed, 04 Oct 2023 18:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696445768
