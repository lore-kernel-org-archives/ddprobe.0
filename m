Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DF328C5BE
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756153794; cv=none; b=uAjp7vTxN/fzX+WWfxyc0NwCilkQIrvRcygT3dvGCFKsafCCkxu/0yoJ/gwRzIh0PSN4CaxW7Y3kR+4tYMTm/uYI9gopTGiQytGtfPC6S11jfoM+IPd+UthIyrPd3EQkXmPovFMNNeF0UMr7hmuL1EuiiUoeb8J63W86UA2gXmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756153794; c=relaxed/simple;
	bh=lXx2Ukem9Zg6NGtkX7gskIEsqwJ4N88b8q/TpQFmaJk=;
	h=To:Subject:From:Message-Id:Date; b=q3Gis9uHE8Vfs92pQVn6JCPu9DP8qt9REi1YFwK9Bp+96ZGgMg3uoW0BS5eQAj2922EduepbDa3btGFhjhW4pBzNVfBdcvXqmbJd+q8NRcC8ds3kFrVn2BwEPX70/sGvmqYgzvqdohVEFdbiEChBF2+NFw8rFGI9Mko/LDZ2Jlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSqJAD7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSqJAD7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F237C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756153793;
	bh=lXx2Ukem9Zg6NGtkX7gskIEsqwJ4N88b8q/TpQFmaJk=;
	h=To:Subject:From:Date:From;
	b=aSqJAD7NynYw5l2IhDRttw3CQ3KcvVsK1S1QoHqu5jzwXJ6ALZkMjkjqt8okUdvcC
	 LZd8TWk7+h0Lm6mbRBSKvY9QyGCcuH90hw+b8yqyRhyb1KSS10eP0493MjUQ783oGH
	 xg3qDDFtDFJsEWbbNbCiwamX2g4CPsGsik4/qgB+4oe+OMiUMSHu2cMENSF/WOzPmK
	 T5SrB0jrrb5bombYOZ3BIm0d7HJcHQbmxWjId4Wd9OhFFvMxLVU/3Iy0KoDvDfLkGQ
	 TJF53eYFPMZukWPzVLKWU5Mp5VOXcc1FKyUO8LKZel3WeYBRWudO6mERn1c6ZJhPJ9
	 LhMLLuaezzfzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E843CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615379357.28259.15110572936222480812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652a0e8c4bc3b0c2d972f3bae2772d7fb896e13b775514634b91125a746be993
Date: Mon, 25 Aug 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756153793
