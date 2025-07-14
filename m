Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12E4C259CAE
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752514794; cv=none; b=P0VwJKVqljKctfD+zPqvYL8U49kBZqDnzaLN9SwxlsSTDA7dki/SH1xA6wIXLERnJtyZInQdqBgaPcOwdJHHrReLfmv4rE+eLpObNBGE9tU7v+MSztsi98PHb4QtUHn7TLAQYfnldPz3XMDXQGuVdRp2fcY2VIcbnNSlOjT0DF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752514794; c=relaxed/simple;
	bh=Le2Kj9ebwkagbXV06JGhNvMJJ1cY5LlMTBzyEq7Zshg=;
	h=To:Subject:From:Message-Id:Date; b=Xatzf+qA02U6J7CoTCx6YFTuD3bAKw06ypNGkaJBxoZxzzzFWEI0XZ8DqRCp3m74oAcCx15jlp8gLsentx4fzO0YNTymlb6m8VmRDeYADqNur1NKEBI13f7IlpgK3f0M30SvgDdhnpSO5feMjWUvmr5xHGsWmXN16GHvwJiaPkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnFh8p9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnFh8p9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA05C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752514793;
	bh=Le2Kj9ebwkagbXV06JGhNvMJJ1cY5LlMTBzyEq7Zshg=;
	h=To:Subject:From:Date:From;
	b=cnFh8p9qjanIoH4ZCZ5ibawaWfEcNcZFev6JG7y9YxuKw/qxpd5m01RH/+rBPGDXU
	 gIfA5LeMU/3yysDtbRd/czcBvrrQyesChmmQ2xrFNjj23f1TgJTbHeGRi2190WRMZF
	 lMldn9Ye6LdbDnG5iZv4tTkW29qSlTJOMWrjsVf+gvtxhzZeAXG8YMfAlMXPQ41806
	 /8mlkBNtkzNLv53K7qNgngKomxIlzuD9J2RnC6p8jQVhGaxNj8nRHNraz7Z/WnxfiS
	 A7cKghk7lhvEXwLsZFtRqJim4WhEIjGBfHkGNmyI4OgtBqJSKZnpdGQW3xwih4y6YU
	 XJG6G7MQh5I3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E70C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251479360.29212.11992596570745042542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbb386f91356f639cffdd4b4e9d304a05704a2664422cd652fbf671d564ff33
Date: Mon, 14 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752514793
