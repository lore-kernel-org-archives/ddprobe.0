Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148368248B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766180634; cv=none; b=GXaoT2yvLM3rIbDrrBUxcaJOaWCGY0Nn4YRJLoC4B8YSBCc6xgtcfdTe17MxhzhP4H6FrVOuTsq3EDzSqy7ScL4CYLL3OHVcR9kb1g+/44iYqrb1y5dGzOkjdjKVyhfZmHfXb5HwTyIu+4rsYi0uvTEE5g4MaRiiuuFpllYI8UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766180634; c=relaxed/simple;
	bh=xicrG3alHh2qEiJxP3Cb7k3ZjzxHdxGhCJEq9UsZht0=;
	h=To:Subject:From:Message-Id:Date; b=FIrA1LfI0bwPk/h5y24PyNJOoYGGsEbUiLCqULKQQJbtKgW0/kBEAerfDnwxu9znNhT2KpHzqhuiWfmzyDdrAmd1Ra95+07zA/7r5zy5O11h87NLcyX93lDtY0U0irPLkAj2hhFvFYvlEhDqAnsEBDbzybmfkD20LneV/Li2pRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbNjsosz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbNjsosz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35BCC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766180633;
	bh=xicrG3alHh2qEiJxP3Cb7k3ZjzxHdxGhCJEq9UsZht0=;
	h=To:Subject:From:Date:From;
	b=SbNjsoszRNFka4evVturnLizdcTcH5yaj6TpZyZkSaLkMZGTTXvK2MLEVhn6nYpE0
	 ApQXn3VJXUcdVhzYcfc2u+m4EW1uLx6qWzfixs1Dc2b0Xuk4qMJE/MlrKIMhi+iAue
	 PxeWdtYBnv4SjRWRGPxAUoGUmpOidjI119nqVDN8Q4t64mxxRisOKmPzUnbHT/fCC3
	 Rd+YyHfjF9v8bgtCzvu/a3qZCJ9hYvnntNO7Y6kGSrhwz65rBEK2h14jCUJiZEgbxt
	 633HjLWmxydKIZEDnS1vccfj0vXNQEDYb/AJjxIvUCnkGcJVO/PrCGpnBHvzeJfsUI
	 x3/QGKkHC+RaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EE6E6689C
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618063360.30120.4378855394518303701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f40667059837a1f8162fee195f823308b5cea94c952e7472450930f71d5e63
Date: Fri, 19 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766180633
