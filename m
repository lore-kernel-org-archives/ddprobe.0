Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B36591FAA
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6652DC433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663030853;
	bh=T2ShpmvUeKWQk1VYgrrfUJrIS8PUXtKfMUC3LEgjN2k=;
	h=To:Subject:From:Date:From;
	b=mnKc90MX2+CspS7LYcuL/zNsXykEnOU9bsKnXNRfrQhvF1EvUyKDICwnKo0HY9T01
	 ihDyB1tYjqkzjwtiuXqenFQlpQatfhcqjCXPcoOqawzcoNOGHsyvh221QiQA8sbrsq
	 CKn6MVoBaBwQ2/d/fXM/ZNpVTqo5QH1VC4HRokTg8fiMTyBP8JXWWHKAX/sOQEVWAz
	 F94zxfGoQ/ohWtxKraT/JTQnOpFeDF9+L7DkCRYt/R6i1sqh6BnN5FEhm9+yL/sYBs
	 kCpUZeFnkW1IBry4nVrdt/v02j613sa8vr2m//rCb1h5F1Z1SiGxJ4pSmeQ2urRnp/
	 tQlirmYFZ33Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E18DECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 01:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166303085331.15770.6323744604791016543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a4afae470d466eeaaf38d03ac570c461432cc27e15fb98cf9e6ec11cb7e32a
Date: Tue, 13 Sep 2022 01:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663030853
