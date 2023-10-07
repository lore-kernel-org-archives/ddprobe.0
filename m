Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86725F9F4
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnkgSwcN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32ABC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696675628;
	bh=5600rU6Kwd8zW1Ooly8BeDhzcHchF/Mhse8RKlNz+t4=;
	h=To:Subject:From:Date:From;
	b=cnkgSwcNQ85HPxeuZo6OqebJlqdz4uc8jg7RMNoLvPfgJUPksKLP+phWjP27MsvG8
	 qZUyL1q65X972biGmacRhaxYfHM/MZXA2zudW34SOxaOShlAPxykmsfUUGnaO0EQBA
	 Mm9OVq+sF6fUig6ttbxpH1xoqAZQU536ZzRzFnLFKzT8+CGA2YoFNPF6gNtEqb1WNz
	 /Rz+NoBsCepeF16NfD1d7c6Tg6jO+yg1y2LZ8T7YatyMf468IjpMAg0WXowcy09WoX
	 LE5aG7pJ6zOt/trFNALc7NZd1MiNaUn8Wmctiiq4JgtCVejCrimg8w17Sc2rC6RxZv
	 P/4oAtfv8IWjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CEDE95A60
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 10:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169667562871.30540.9460429876977765157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 547139b1087af412c355b5fce9c9a3a320c65bb9c80ac1cbdc21deb92eb8adf4
Date: Sat, 07 Oct 2023 10:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696675628
