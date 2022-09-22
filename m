Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8D621FD5
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 811D0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663822253;
	bh=HMoWWpLVE/2uKY2rRHx4C6Cd6KTiRgSXZr/kMfREBYM=;
	h=To:Subject:From:Date:From;
	b=MNbDDfv4qV47lw7yOwNMqEO2QppPrK+pVE7rGGXSt/nynB9/5DPrrirQlp02oO+hL
	 2ZqHubdTVqcpW0pEBc6QaAZ/mvPqPWMLfTNTb55Feq2VduBid1WyD4XjluYP5zmcQC
	 iMLM3MK+pp1PG5tW3pWL9xtLXqfE8y7XkYPEffWRvRaNJcDihmFfWdbH6eTavW2hxx
	 cWM4edLx/VFYvxGiI1PvQpvq76l91FCwT4CMOFfiMpMaaxFjQEXSBMkFxkhEqq92zo
	 R8lUkYYLOxDDpSXX1La8kHh8wDDkDfCNMGrRhICLdQ2peQ9WS+E+KRtkxGTX/hJEoy
	 QhoUtwQo93ntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B3CECAAD8
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 04:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166382225335.2462.12035650416345616571.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c03ad64c56fff3a8c3288548bfe9b62798fa2ea8a6b009a91942b4778c43795
Date: Thu, 22 Sep 2022 04:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663822253
