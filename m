Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341ED27F75C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770462834; cv=none; b=txa2LIf2RYNpOJwE42JyDgYD8ZOyUtPiIeajPFBdqTfrSyYO2Q0I89VD8ggQgZRaE1mT7GdJBMqKRqSLkq1y+xAO/y88WGLQ9JeRtrliouVtDOGOcGmBZumnBz/HheIcj3oLCmbcsT4KvdqYvyTs2ipR418Sv1rINmkxI65J5VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770462834; c=relaxed/simple;
	bh=/DfxwqPoWnWDuwYh70DzyY8FtO79unK2OOOA6nIBBHg=;
	h=To:Subject:From:Message-Id:Date; b=Ad0fPGbhrv+5MH9PcUl3LpQJQT52RDV6F1HvAAe1pF54hEjTlYlIyZVd0T6aZJbzQAR4wHljthcYSs+MbxQuoZELUelzyMNSeChdy+3c86UFeD+ZHb9nNm7Q2VvWeosOl6kbldxSxGrYBP3SncqKfJHSxqp8wvWqtRd9mkQtwLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1uZY0Fb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1uZY0Fb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF37EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462833;
	bh=/DfxwqPoWnWDuwYh70DzyY8FtO79unK2OOOA6nIBBHg=;
	h=To:Subject:From:Date:From;
	b=C1uZY0FbYHvWHREZty3J/IGWL37OeuHRiSWMh8xwERwnoamcEyDgWBSmi+bnPnUma
	 1Rqxk8HtzlnfFl6lXUuj5FGzhXvZcod5xUb2vMyuLqH/jI+ZVs3RoTwnxyfa4pwvXG
	 lTjRUjogRiuLbkQngxGtwy5rLKLP8/iX/1yNaechzXcS20UPyjIYKWhkxU2XnW+wDL
	 pvzyY6esBHBqutlWOgS3ZvAu/xcviqTU00RKZxv5/cNqLJVnOdGtLVAi5MSdLEgYTh
	 4s8x9XKrtO7wZJbFhR7ArhyimMkjb4gjTTLjpVXQFmjJ11TYqC5PDr1eawTUJhKcxZ
	 Hl/wQTXTCg9rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C608EE0AC8
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046283360.2182.16893400080422833793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b860105330cffd0292ddbf58d3b30c4d96dce0b0c2469a8152ecb4ac27e89176
Date: Sat, 07 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770462833
