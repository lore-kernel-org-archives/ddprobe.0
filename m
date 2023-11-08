Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E87E1328C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gv/BmBAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80117C433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699464496;
	bh=zOKxqSzJ5xeKv2YCI0fqy/fitMfzkFs4QSoXT7Eb51Y=;
	h=To:Subject:From:Date:From;
	b=gv/BmBAxnROKPbqrduJEK6nHpNexk3nvhPgY/xYU7kkwik5h3/gg1S0CprNCs5x+X
	 mJTZMpUWkXMmZXZA8RfqioYiziN+uzvqCpqlFpqG1DygsO9/NnqtZGooEVjYxh1LON
	 eDql83+QzkLpZ//YA+Wpdr79TSjg6gwOyrCerfeRQXHMprhYvqKnYbLHWYUb8rysuX
	 qh2ywSl5mlRDsU033IDuNAjHHoHcCSqiqFxaXApwovQcZl00qjMltvg5odxN6Sf3aV
	 hUd2mOvz3AXOmz2QWeGR6kqPru1vXz3ckmE20z/DZNmNiffiNR7zdQaTMOs+voiOWM
	 mYbwCUEEx4atQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66337C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169946449641.1908.16012109518123935999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4291fbd2bdb4caae71e0ffb7832695a384a9eb05697cce445fad75aac1a4f028
Date: Wed, 08 Nov 2023 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699464496
