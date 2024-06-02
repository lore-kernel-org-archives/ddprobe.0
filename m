Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7632135A
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717350923; cv=none; b=oT4pNjhVjGX7YFJTrGcQgtH8Jz1N8EZODzpZ2TLZUn6j8+9yzhdHDgaBEaQApO6sEF9hRboPsRnBdUxOTzTiiakTLbkOY4qxaygvygzvc7rEeusAOdWJUqoCdIGysOXRKROLLO3Qh/4knp6COnpQMQUvAZZO08ZSXyfE1Jnvbec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717350923; c=relaxed/simple;
	bh=iEXFQsxBAtD7U1xmGvbjRc6a6tFhyupdRvAAUTO/blE=;
	h=To:Subject:From:Message-Id:Date; b=TeJuZlytZXPmwHIEPdnOGJaXHV0YWG+vXb6E5WsTtGMucjA+Gj88Tc6Av2bCLMPWgThJeZSjXP7pzJ6xO1E32X2WRVyNqpOUAWHRZ+tZWi3ZskTX9l+5FM4RIesFekFpJXLXOfzUfTnlAUEcA3BGSZCIfGLYvyd6AM3p6JkYs30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL8dFu3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL8dFu3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE26BC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717350922;
	bh=iEXFQsxBAtD7U1xmGvbjRc6a6tFhyupdRvAAUTO/blE=;
	h=To:Subject:From:Date:From;
	b=BL8dFu3PW/x/hg+oEPv/Yfhi+NsnKkXrB/+UijDyXQhEbMxRfJjcn6Fr8lrImgd/i
	 ebzyqoAznrwXAFg3EF/RA7ym2LHOnvspFbtVeG7jVYy8yysQaAVNp2+/7XIKO59D1y
	 ViVWTxI531dRAWHcQ0mI98AEniWEEMh5/3AcYqaSWxCGD6e3AY0V8vTTHjR4q6/AYj
	 o7lNlOZQvwuortomR7XJLKZ7dJa7cnItwdlcW/podDpWUVsNUWWZZJtN+Ejpxw4y8w
	 +zrKIw36rmBUB/qRXfiM+Njdih/oPssDwc/RWi/mFYFy1ft8lvSlNJNNkMQxNX5RrH
	 pwWS9iKHOzoow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5187C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 17:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735092280.4661.11290624968304400114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee4474f2bcbac14454da3a53c6ac77b6b3113104db99f178b9579f4292de820
Date: Sun, 02 Jun 2024 17:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717350922
