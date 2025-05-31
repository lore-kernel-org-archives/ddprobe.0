Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C34954652
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748667594; cv=none; b=YKntP/XP6VhPsoYYwMU4otEgu33jHgt+EttBI6TgTiDtQzSY3r4As2JqnMWfWJcytd4eWLqO7gAySzTcpOYnINtIUynQqiUFFLgpo80fj2OPtkHMwJWpK2dKJLyt5A8oCATv3rX6uTdGsbv8GOFiUaOK+9/kIhevgCH3ANWqgq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748667594; c=relaxed/simple;
	bh=K3m6aG1eUKPux+kXov0mKfS0ArKVVOZad8U0ofJNFVs=;
	h=To:Subject:From:Message-Id:Date; b=Y9c5xvuUBuDofx64O3WxZ84QE37aCFn3YhymGp2zQh36u3a2k9Ip/L6+VceMR5YX5HzLRQOnbjEmVRDEeulxRb63M4B14K7QIJYcmC9XOlbIZpPzjaSdKIdc9sePBffl+O3jjqgPNXpjHKqGcZQP3iux+/ysattV1nhxgDzVgyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SlOJdF1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SlOJdF1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6790C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748667593;
	bh=K3m6aG1eUKPux+kXov0mKfS0ArKVVOZad8U0ofJNFVs=;
	h=To:Subject:From:Date:From;
	b=SlOJdF1HBADpvxnf0TIqXwCE7s9OD+MsYrhdOAL2SdAKjXW4MRImsQrXIbmqs2DUR
	 0h5EuJWbuw3xKlVVt5NDvQQEWAL4b/XqaCpjqTYg/JXSDny7YnGkrB3YLPbI3cjvZc
	 Ail1NmRTMXZgN7RMaWQZSF7utpCuuWelOhOWy6qk3wrRts6zcQ0QTMHmYJstQuO0LE
	 mOi9Z2ZibwPsD8bQYBm0vh+F99ATm47Svr1UNCnQVwGnX9nY08B7lSV/WPLloSN8L2
	 tW0WdqyssVnor7FFZCJWx1krB1ohhQvRonvlyyZLHuJey6kKdRcl0YqkDurtrl7qxe
	 dINsBhs/GwoLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A2C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174866759357.8013.4203447447958300026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41b6275dfe45d60d5d30c99f7a7f831db4c9c406f32140f008d6dc1d665e4b2
Date: Sat, 31 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748667593
