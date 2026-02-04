Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8D92836A0
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770213834; cv=none; b=EHII5a9xNowIBQFvX58SisWlASBHVWJ4xjEo+KY9A8G+qXBaa2wp1fRnW/L25k7UhzEHStDnzx9IZheu+nlHXvB+qQ2ShkdVc16WdYgx4C4vwXH+rLiotl2oA+DWpVKRAcE3BnDdxZzm4BAlJh3x51gjmqXVpCJ0Sqk1tL7pxlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770213834; c=relaxed/simple;
	bh=EyzNfOUi/LKzTsc4Q6ylzRdWPj93Kx2P2OfH/cdy+v4=;
	h=To:Subject:From:Message-Id:Date; b=EYt4Ru6JKm12s1wxALV/jlagypc53Gu0kcR9z7xXHjZH3Leb0fn4pTEjCxP1Xc7teZACoQbdzQPhM2u0X5aLpDyqVbK/24gYBW1s5F09KbLSKvfRbp9uZ3MtwzNqtq1ZhWjs2Gm7dXO3b6h6eSjaFZ6+209pg0EdVF7uNaP+TUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBmqwpaY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBmqwpaY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C386CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770213833;
	bh=EyzNfOUi/LKzTsc4Q6ylzRdWPj93Kx2P2OfH/cdy+v4=;
	h=To:Subject:From:Date:From;
	b=aBmqwpaYMLaUbzAGabYaLAmNDkBgQfW9batA956XZC8aY6TNP81aLgzsC1HRdU5nu
	 Hi94DE38f/FOS1QMANBCWikuaDB1e8Y9zbx2RDM4uxWSvBcI+WLpT10Iog5D41L4/x
	 Q+1Vt294xlh0z/Cby+kDay71MtKoxwDUrGn9vA2PgzVwe37SZ+dLqcpt2k2Nx8VcNu
	 U+Bg8uGH8xDKQjRwXEqXjt8VBuOlGZEBCXo19MR4O4e2T7UzdGb+yVMR4oYw0DceOD
	 Q8CRsM9ii4ZG9dO4EeBu/WQRj8fTEwSlKBoSdTZdYQhN9wXP8SA+e6ohd5MCXiY9eC
	 vZG8OI5B0TXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FDEE83F1F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021383366.3226.17123848815598619899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9576bdfa65c69dc946eef15153302c47158098e37e0a54d9467ba84d59780873
Date: Wed, 04 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770213833
