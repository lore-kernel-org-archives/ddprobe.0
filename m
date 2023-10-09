Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB5036B0E
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IBhu+Z9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDCEC433C9
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696877228;
	bh=XQ7YaN8ObaKF2cUURXCGIY14ka0O1n3oiNhASB2n6mg=;
	h=To:Subject:From:Date:From;
	b=IBhu+Z9j0gZZXpoe2mvqpdBMWa6CnbOekB5YxR2kHao87q7kqggSbur16NBFYuJj1
	 D9iLdoHJ0UnafaAeh9B8PQsHSTqv/8ccA8IP+nZdkBgIVxBtETbXHphqbygbngKaxh
	 CA+loFEs8vIywLmS87kSMXnGojmBVj+EHYYK5Qm8wAF+p/Ki0rdGwrwQV6gxmbpeis
	 9dtegkPcYCCBuyT4ZtDlHc9MDq1UOTSlsDz00zkyL4bn59XwBVYsC+qgZRw/YMl9NV
	 Slt3h7aL6D+inXds+K7Brkb0RFBFTcCuccFex2g/+lbCfvy/MMfLsBp5J98IpoSFxF
	 JdR5/9yifvOMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDA6CD611D
	for <ddprobe@lists.linux.dev>; Mon,  9 Oct 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169687722875.3472.12906784120233819312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b24c305e3772210882f4901c544a43e8563203a5c67968004a6e5eefa45ebb99
Date: Mon, 09 Oct 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696877228
