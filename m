Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06336634
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4844C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671177687;
	bh=eu3nUGs3WC5O68ajFt12BSaW2w0OTxGvCj5w0dDGhSQ=;
	h=To:Subject:From:Date:From;
	b=pX6SsIxO2Gsk0j8vsw1rG2EA8yiDmWRsMH75rr2umwvO7IAfV4dJ0ZZd8Efjk2WL5
	 +7zgwIBGv86ivIMZIIYKXOFzn+GP7CqNJ38mgLq3ztatGX3/FEntzDoZVOc0xDLRPw
	 ChoGjQpm/iKVsRHAu8VbIjxvKnf73I7OqtBBBF1CxEos4ccwnyhDzmnG3h60tYxVyU
	 /9a599+MA9mtX2PvGiGfLLhjGfIepK9Ery1iDLuo/KVZRd60VAJy4Leje7r/rl/cyR
	 6SIE+KHcPtMAzlQAzwabiqY9/xvYO/KYXodiKdXxAN7T7JFTYaOmmOnKcRoTNFNsQP
	 b+XC37YwY+xfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 774F7C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 08:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117768746.3816.16242312397177776630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a77e91dff89be04bdbd73421848401ff5507a31d67b0a697da6a24a3eb4cf18
Date: Fri, 16 Dec 2022 08:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671177687
