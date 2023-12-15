Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBC993A8C3
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cZOtcDn2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 876FAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702657696;
	bh=15u76bUDXhR4A2xsOVjvf6aQbjzu5TGIDdlAnSq2ZuA=;
	h=To:Subject:From:Date:From;
	b=cZOtcDn29LiCez/0uVojPud7VuVAU74Md316VaBOxlid0nbtqioRY4P0phjlTCflP
	 WCFkbdULqpC4VhmA2KpKPCTykE+wKYPfkikREya2uCyVSTqr851UmG0PLSwiUGF5D6
	 QYSIdOdyzmokauAg9AbwfUW1+mRp7P9z4uBxdQIojcbxtCqctPLgLAMqoi74LWtlYM
	 E9/5ZYF4YPaNke94ZwntMsoiKDvlZcB6SdckT48ST6/LMsADqMtY6PUE6nfXzQ91oz
	 BgtbJYd136wPnzhDeN41i1zA0LKc7+wNdeJi7wgY+NbnTb3LSgb/YBQ9lfeTLU+nDv
	 6J1OuZWHmLKJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68605C4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170265769642.28649.12167028571817301625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043cc9ca15aa1a1d6e96d29f48c1a48c285850e8c0578ef92cbd1e0d322fcde4
Date: Fri, 15 Dec 2023 16:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702657696
