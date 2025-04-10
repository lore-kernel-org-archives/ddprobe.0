Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AEFC1EE02F
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744327194; cv=none; b=NoGTf/H5g93ddyYt9KSztY8oCCZAKkFZAfnHzwHjL19xJFdqhPJaBkTsq9JnNLSpaialZROvZCh/vclNk5dLE5ciBNKZG/lL5fGZgzicpPecK/2bmleI3TuZuqnUnCtNwJZ4i2d0q2a2HKU9dNV7HVE+dyW0DJXqSN/Ohw3qB2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744327194; c=relaxed/simple;
	bh=+gotoHLMbvCjjFwYabjenicfqVmGqzWMPFmPIf/lBaQ=;
	h=To:Subject:From:Message-Id:Date; b=e7xC62cZeVfmXVsk1S03H9QssXYboKUJ5L3DqTkxpa0JlYH6E3VRgeZqt3qQE5meg7zBkn+NJurTXidYdu3NHe1BEi0SBMNFd9mWEaO9yVFpPJBQk3oVyjuKRkv+RqhtiWHfkf77pLMOePTDRmXETToc7WN/NLg1UAzHNToFZbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXN8rGaV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXN8rGaV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08B6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744327193;
	bh=+gotoHLMbvCjjFwYabjenicfqVmGqzWMPFmPIf/lBaQ=;
	h=To:Subject:From:Date:From;
	b=KXN8rGaVGktnQu4cTcVsYj74nftpdeH4uJThZ8u/OFoiPxFIMzq9aFq8XwiR6tRdP
	 j6tF/U4YVqVBFlWMfhF0YpYsQcr8ZKn4aw8mjYajPkYV/lfBj8rIgMb4vLpxV2iyHF
	 2P+2DYpeGKZeV7qxV43QRIe1VBcW7NvoOPYnHwe2mh1xQIbh7d9t19TBWSofnlbGjx
	 ZojIywlOqi6fd8rbx/kiDcSfxQkWTPxvXMW9X06SJgP8k0MX5VohPyCIxetB7r33mm
	 jwCnhKmc7pTBFJ2L5/ZQvnxNzU9tl2bbsQ+1Shk3ULQWEnA34ZvqLqhbE5ujdvUb5I
	 nS33d7NFzgCTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99004C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174432719361.29228.4979606497828886258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298bc260ad9995460658ec584a67828dd8c6b9bfb01639e779305d7f2cb1eb97
Date: Thu, 10 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744327193
