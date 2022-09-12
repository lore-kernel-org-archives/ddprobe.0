Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5CEF1108
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 10:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D778C433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662979253;
	bh=VSaNQWljyj/p47fJ5LdOOU02XwJsNvm2lh7r/7XpD7o=;
	h=To:Subject:From:Date:From;
	b=hFI/DSKN3EkVAgWhxeJavyqMZdUO587Ct9eXem/Fn8E3IVaj7nwyXnbM7318Bqnvb
	 fC4lKd47P5dCAczDWTBo4JUOqoCDsNDVZMPo38EsIiND2nQek9F9JK170vCvtzH+oC
	 Q+TCn3uiZ6jmfAMdkuWcXmfKC9gVsrEcYg/eyyeAH3mBvm/KmmA01lVCJoKtSG+oqb
	 MF04yxNANEOhogiUE0Wl9K5yZwGplaSzJG+8QCYQ9yVexZ2QRtpJFGp8llRvsiynBG
	 DqY3QiyQ/sP6vOf7dcx2bfLWhOXN8OGG7ieKzJ+5rE5VWjTOiEu+emZJ0EUgEQ74Th
	 8GhlSvo/LpdSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D8CECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 10:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297925333.32085.14366492314126448760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e8ae59236486509c442d4e18f55512e198c495434446f8cff4777a7f39207dc
Date: Mon, 12 Sep 2022 10:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662979253
