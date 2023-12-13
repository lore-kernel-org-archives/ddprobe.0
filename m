Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76B7BA2E
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZsPtCri1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750C8C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702438696;
	bh=mwJefEfjukvb80iHgJqKy1dM8WITSQmaiEzz97WBuUo=;
	h=To:Subject:From:Date:From;
	b=ZsPtCri1QW8kLZ2x6cZ15WFQPFC3yOkS5pEb1jBVQ/tPrEEJwdyYFqQJ3UFjrChb+
	 /jfy84blk9WDNQUDooNNLLO62p1HLHfreUbeW29WtF4tmqqzOd8k3itXkEEAnpc4Re
	 G052WDpW69JlCElTqEQVa4TgPrrxDmckKVxv+sn+W8EfbCa5YYDDZ+mEyUaoitbQEE
	 cZtUrs5Xnh7AdcPs/vcwK+9mPiSHQNzsRJ8zlKAThv58tcz945N+VuGhRC6jezFYpY
	 U1dCpH2qNgc+17hKo1Nx5Kr0PC1fkxwORO2OEU8TmWN0a/TvJ11qVoc6/95jmldbOi
	 njuU40+9EQOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ABFCC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170243869636.31973.3769360220574953450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f3aa63ea41a0d7c606da9729d3577f087d6572e784021f3cdb45a2267dbfd96
Date: Wed, 13 Dec 2023 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702438696
