Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434242CA2
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 10:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E633CC4339B
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 10:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677581765;
	bh=fTvMpL3epQrNr4mRCDd3XVmzrQQa9gOs4SYzV2TmMbQ=;
	h=To:Subject:From:Date:From;
	b=SgCQzJARiHfvhLnEMOCat2PeHv8tkXGG/7VCh2EU5v6WjXlS2mJJ7Kak+fA76qRyb
	 /PFQhi/jaSGYplk6lny3/jyPCwZpEHXZWyayehBdi/jKtNKIzFAwF7EJiFo7LTmbmh
	 zjYIlpVZD3VgCzQjjvNjreArcGqSmzG6DEfAboqaPUGI5Uw3Br5GkL6CwRsepYcm//
	 WpK4FgtSLv/H3dddSRiytceeXp3UbWmToc+qp8DejeUev3+5eTm2nrn0zdE+4E2hof
	 h0vp+3KnTnPhJV/+W5m74b8a/YmQHtLGHL/tokCj7tJc2pTxO1XZG+XDx4LzoStspv
	 1romSGDsRUyIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A7CC64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 10:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167758176577.5202.11820619390376287129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b842e10b9c44f3b26a7e7817e1fd12a2bf75f07c3387dc93175f12c0b42d2de
Date: Tue, 28 Feb 2023 10:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677581765
