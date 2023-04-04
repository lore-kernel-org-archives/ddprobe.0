Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320057F3
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 06:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1800C433D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 06:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680591425;
	bh=jT24jxDDhlhGh4pAkc/0VfnGK/WFFT3qAEQs8cM4HVQ=;
	h=To:Subject:From:Date:From;
	b=lQe+QxnEupte4Ie2inuqdq2hi1Hay3t/Ib4XoGj6Hb0pNqXxfEvrOByhdqmmewLiF
	 rspoNYL7QnACPA/+9Vn+LAiucTHwR0BI1F0C9ncAoNk2xrp1lW2iEOBNfgZPvweueM
	 T3Tje3Ua2BqlgsuflMKrirrMrYGx0hHHEn4mgNjyha0PzBTbemN/WNt3fPAggDMRvU
	 WMLe/IVRPRTdfbazlvvKHRNoiz49Nq+33HPzIH77yYPZWmqaTye/IbZ9MNrfem/b3F
	 bTyRmDbH/NQ6gCTrUjmgYCpaPZuL9g/cCO0TCMJfDgIg6/R6IbbrwNYn/x/VuekTOG
	 Gv0mPWovvu70A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCB8C7618D
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 06:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168059142576.24925.3563742149835851984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367079aca5fd204c30a2122cb1cbfbf65c956871591290096e967a10ff546b78
Date: Tue, 04 Apr 2023 06:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680591425
