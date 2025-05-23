Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31747295D85
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748019594; cv=none; b=RVD4DDDD2OoH89tL1apc8RKCNbHPeHvBh9Ohu5pBSaGndqL6qC97klClI/9ybhoOdTdkE+ZM7vjzY2diV14TvmBTjATIrIDzeTdqHhtwnkFkLSr2ATmWLD0ke9zPLU/GhviOK1zmVjovWxEHWT/5fCVSKsuv81v2d5QUzeP/ZWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748019594; c=relaxed/simple;
	bh=LiPiSQBMcF9XBFaR9M6M53qXhEvNQDWhWcxvcQ+Rxq4=;
	h=To:Subject:From:Message-Id:Date; b=ZyKP45WJwAY8rQRd0QHBdlS6t82JWyHYwilNEhhGNs/94lM88T+xBxDVe2Zqp3ahRRdsFktMzT5KhiiP9D7sA7WwmXzst/3TbEMW+rs+9iteQaNQV9Ez0Uc2FQ+zvS8asM5CpBWAZkJ5iZU1uTOyhW9rOJ+SDfNLlC4BeuT9PyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G7jgSGHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G7jgSGHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2601C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748019593;
	bh=LiPiSQBMcF9XBFaR9M6M53qXhEvNQDWhWcxvcQ+Rxq4=;
	h=To:Subject:From:Date:From;
	b=G7jgSGHyR1tSAXDfIiYNfnoReQuHVCLjJpYsiqKR5mi3EfeQIMpMIP78IOnkQUuQH
	 7Ri8RWqVAqBmYAjWkhT63XQZBmjnhihwsASi/PTpTecXlvpfUjvX9fu2iYO3KdXKDy
	 RCl2AsJ4KlcAS3D+tQ82CKF9uDj6clwFYr7YjlI4Tuksh9OOZKF30m7xmwCe9qaJTF
	 Rhi3R2yiIigmtJHtEXELnkPZVDZgJ+irZ4VJN14nEsmJCTrrduA5jKLTJ+xojJzkV9
	 mraHO4p13ZbuVfp0WXiq2KLh+o/2bjxhbcylCW4T4+VxjkJjxXEOQKRp/U2T35O+0f
	 RQvFcXB3TPctg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE78C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801959357.19424.1707819871036983265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb9aea27310776cd33dd8421abeb8b892bc7426cffbda432347c24430ef1bc0
Date: Fri, 23 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748019593
