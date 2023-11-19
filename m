Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FDAC10780
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NVf4JHtj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D9FBC433C7
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700398696;
	bh=y7Xc9FvG2+GXQZddvWky50C0jER096A/Wqnt9nMVe1s=;
	h=To:Subject:From:Date:From;
	b=NVf4JHtjF1rxHd366100ycUYGgf+7uaquv1pgbeqIg/w8WBwOMLDCxqRcL7qwF8jy
	 V/bj87WxDB4ECiIaNcarq/N2pNve6lbV0ipHjlE+7SeGDhXO1KuO0+IkPE2aoR6v5Y
	 9ywixVj9Dc1rdIDeGoTgONqCo0MGrYunoHcrnSnf3EfYYy5PdVHgrqfadVJ/6DzBEq
	 IcHdiqc6fhOHVRMOxOVW+VMEx5BbKPqBe26USdF1CTFWPo9mSoCc27m+dIY8I55gA0
	 4Lynz41QSzXI8DeK24pnF59koEWiuJGfCV2FpLFXNzVkSEzMD7nht1TUT8AjvGbgFC
	 nK+uzbiIJcISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 633E4C54E76
	for <ddprobe@lists.linux.dev>; Sun, 19 Nov 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170039869639.5099.14717214446818541669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7e074082114ee532f9cacd678392c369792bf2a90141d9491a90d53c0ba38ab
Date: Sun, 19 Nov 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700398696
