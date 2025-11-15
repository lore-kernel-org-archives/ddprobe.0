Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202821B7F4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763177394; cv=none; b=WWMutjFBWbxVeWcv1KYo0Q6Mde/FaKazivWW7LkfrEsNKtAv5ctz4aV1gLYen6Teji6eCKtgTACA8yDDhn/plkEqF/Nxm33W8tox+rL0oYJyBGcSPY1iL71xfLJJekyQQgXYXiPTGi2RIQ5+AHElduh0/QOzgDZF3rll4KWwzlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763177394; c=relaxed/simple;
	bh=D4/YSHnyyL5Za64+QEKj8o0DDKIb1hftB6+tJfg2Lac=;
	h=To:Subject:From:Message-Id:Date; b=mWe6iAZqIYM9LnOsKl2Igf+4QaKfY+MyhuWzjS/Uhxt8MJTxx3xDptd9GSr60l06+AuOMi3F4OyYj+27wxV46sBpJXl/hEoEuHXvniQqfrjZKbVKNUcQ6AMQjn2akfV9BIM4YxoNvxQphQXglEMkKc1p0xwTLCoBwqD4G0OmDIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LxtCxhsv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LxtCxhsv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FDDC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763177393;
	bh=D4/YSHnyyL5Za64+QEKj8o0DDKIb1hftB6+tJfg2Lac=;
	h=To:Subject:From:Date:From;
	b=LxtCxhsvAlwgoQvq22VJ8niHM89LNdNl9HhSje+P9CaYPjGYf5k+t1LRrKI4Htuzk
	 aU2gHOZl1zNSQsNrD6bIG7OSjFXKV0GQY0eL6hHnJrpX7X79ED6/6ubXdwGZugW5r7
	 OQILVyx5t9nfTUBxT6Rr41DZn+hANsqWzo2leq9EwBHLDcC8D93Za6vRJ0L7NyLdNy
	 1TO8TbnOIMkTIRF9AMSato8ri2Tzcg7xpBLqh/NSln+vq4alX7GJeuInWtgEgovQyD
	 1ngbpp2sQsTNKmitU7QlkezMfo4JXNic8vmPjBnza7wPMN9He1yh9rtLqpdSZkbXoh
	 ahH+G/702xdDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DDECD4F48
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176317739358.14591.15839426191174369935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f1ff859142c310b51cd9d3009d7f22b342c36a4730e187791df19e3190cead0
Date: Sat, 15 Nov 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763177393
