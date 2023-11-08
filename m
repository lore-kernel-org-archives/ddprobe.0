Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC657EF
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 02:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td/BxLP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81E03C433C8
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 02:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699409896;
	bh=SaBuzFRoFtJO99UOtPABLmSFTzF4IfpP0Z2ybI+GsVQ=;
	h=To:Subject:From:Date:From;
	b=td/BxLP1DPwSaV9TVD84J5C0AOkxbY27Twq5IeU7XvkbCrNYHLCao0M0zfdXR1pPV
	 hlhMJ8R/nc7SIQ+PJOuf02sBzVsaJgNfqcRYDVF7NKx27tUl26HDlIMh7Jf8HVVMH2
	 lqpOr3TW2bDGiauFdb7cTJasZuwe3ke8ltZoVZjedIgqy9ETU5iv7wikl8Q0Vn/9Oo
	 6KkWFBDB/15nKqUFBW/Jwc+kqbbwX0m7hztfJkg65boksiSEbCQwtIdhJ094py30JV
	 8r+iOtWXjd00ZM0tmwe6iKg9egRFh6FC5plF3HfmaXLu71qppHNez5nSUMvrKzSDnw
	 9DcUo0Y3aRBbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673A4C4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 02:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169940989640.27497.10473008714540918550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df5359a1af85fc594ecf43ededdef51373f7717fd13f91177e0ff5e149db518f
Date: Wed, 08 Nov 2023 02:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699409896
