Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E43186E20
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746392395; cv=none; b=YYrgC4nXVZ4hNBwKiNqdcWqswDT/UxdyvUjKfUIczEvHFD7HEoIUqbu5eUEDs0w6sxxetMZ0ACL6XOP68xg+Kdz8nuQLpKY8OYRpwrrLknJb0cFCBq0EinVmaT1P4lP83oUGlc6JdT6oCqOaHUmogZOPNBv0yZiReX0zwnFexPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746392395; c=relaxed/simple;
	bh=H5JgKVAQM6LV1h5tAxwNdMp7g+JyFGTCff/wAForDqQ=;
	h=To:Subject:From:Message-Id:Date; b=VKbzt/GGpc8OaeiFwvk/UnqaAKzT+tXer6YV8LZ+d4QQLdFRTHWGODaoDi3b6inSZBRTvzweubGCghjZz1/sv5VFXL0gmZF5Xo2bKURvNZt5PAgGU9tG4YRye7xG17KYV/oRVI4aWrrmJLiuiAAEAukhXBpVxyqRTsmdCY9D+LA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARydk91q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARydk91q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BFBC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746392393;
	bh=H5JgKVAQM6LV1h5tAxwNdMp7g+JyFGTCff/wAForDqQ=;
	h=To:Subject:From:Date:From;
	b=ARydk91qUiyFnwkoJsc9S36pUCVLb2h7jJVMv16KfG14zRGhMTgtlacD3l/F9B7BE
	 7vMD4HXy6PjrMWDtPwbV9sRSsTYorW3TX154O8gkEVIk4+GHxDI6CxJC50F1goviZu
	 2Ut7x7EPnYdRk1EOb12TxNgR2WrYH7VRL2dCehRIGDT6V7X7QHIQqemL7B7rRwDDP3
	 dLpoZ38js1RwC1oe3jdsA5YOdVReGuhM85Bb4NMFi3rmc2rgAhLW4EuEgpMeSri6hh
	 K79E1NAhsVOXwWl16IXjteCWYudx2SA7M1WfQyxNZSCM6khAHIkuwZ1pVV6BaeUvR5
	 B030dyVbYtQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D5C3ABB0
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174639239357.19551.14910815916719281586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e439973fe3e62c129f83e1cc1700da0c0966e4e4dc1f93de0fbcfb9e4ac66f3
Date: Sun, 04 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746392393
