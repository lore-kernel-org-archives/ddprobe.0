Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336132C3274
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759509595; cv=none; b=FFb8Rl9DGME2nfGiCzds+dd5jhRKqQDT2qLnchTNMZgeMnI+YZTgKpkcbjxry6J/bcwQqVZciSjsgqjg6RJrz4HB95bmz40ZgAp+re2N2SKqXsbvVFLuKFx5T8atQMOXANv0ZWvoBDwDdAZlMGQmIqaMzvHc5BQSUasi/PMIAo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759509595; c=relaxed/simple;
	bh=klrHhEEQure8Xe9OBVh3kYCDXJh81yfNQswVPU890xk=;
	h=To:Subject:From:Message-Id:Date; b=PGo+t37Mw7oPGZ2mSNDsMTGFsBGqUcFVH4HW9Xrj7qHqNBJufPubGS6+45UYWMY8VDT4PKVjDO7TSpVYLgT8CTXb/SQ3wO03gX2Tuy1kXjlhBuoUs9VH3UipoxFeNH2Od1qSXEok1rntp6ORyJpz3V1kgk0owG/1V6Nzc7hFSow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVk0s2y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVk0s2y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACDFBC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759509593;
	bh=klrHhEEQure8Xe9OBVh3kYCDXJh81yfNQswVPU890xk=;
	h=To:Subject:From:Date:From;
	b=aVk0s2y0xu4mWZG8Xh3kdN3s+g5hke9nx0/c2ud4GdMccmSUDqiJy7QNKygMbsr0P
	 ddHTPuiA5jLRSkrRlhIvC66MclYTcsQPF9QQLXhNBlpYulTqkIGYxdaey/MTHG2IKc
	 E92ez+m4u8mGmcA48QNHBPcBWyKMXqvChJMYz/b3ObZvj4pgimTaR01qHiX8xmhsH9
	 grgTcpO6XBQKPXs0wMT+QXpwx3GwIgT+wfeEPy+oFhLu15c+foixqylo9RRrfEOU7c
	 i+4aKZPlPSySvvaOPGdL29lRoxzGcP41f6QuAeh/mT+OOw1Yqy85G4dSX/+/+lQwD9
	 3KvIMLSIv+Hog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FFACCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950959361.13411.9928686212748239742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c266e6a981a475105577f811559873cb75db7b0b654233f3071f659c1f3c2098
Date: Fri, 03 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759509593
