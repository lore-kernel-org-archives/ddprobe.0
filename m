Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B28192D97
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765348974; cv=none; b=qaK5B1HLIzsqlxI7thPyNTdatbPtnkbgc/vaE9Pt3lyrVqliERH6+kqyRFyWzh2anmiGu5t6MSon2hXwPQKPMQqSXAJ1XkB3d3PDif3dVAF+vj5RjU7n0tJ+c55I+tFHvgw5gJpuzLOBtqn47dkdTpFgS3oTmuAcCYAyi3lyAVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765348974; c=relaxed/simple;
	bh=gkCGXjj0qcz2xBp3GvpeCcGppk5iTdwThc/gswacEQw=;
	h=To:Subject:From:Message-Id:Date; b=XpHM7fhHAtlsgKbqolnxFoAkIEJmnDUE4XiXK3H9dfq0Hbyg1dk3osgp9Ygc2LowYd88Hy0X3x7dVT/U92vdMxKKVjsBADweNetYHw7qbL3wI98w/7ZG4UjLzEPAy21RCernC0vk6Vz/Er+NySkW5BYpp+qdhZlc6xJzS6ilSSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5Ild0hm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5Ild0hm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD9BC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765348973;
	bh=gkCGXjj0qcz2xBp3GvpeCcGppk5iTdwThc/gswacEQw=;
	h=To:Subject:From:Date:From;
	b=i5Ild0hmmPBT3O84d3dmhqZEsfa4lK1/CK+NF7M725SjnuBjHNgUA3NEkaIE+L1Fn
	 6BS07tp14kDYCcStRsWofJK1vQDLQwAQKA6I6I5G4yfGT6Kn+1/4yHiWULcXUn+jS4
	 DywEqb+2AwRTn48ErFDvvrsOruImWo7vzhTqKg2rI7jDUyWcN0DrCxRVW+7FIyGJw8
	 wYcLgaXukwuC6Pq9mRSKyTPmO2Fs8wFaxYniqRQ4xUqYExu2Txwfii5fld0pOuMrss
	 6jGSGQy4ddWd25aktCMX0fR/4unHK7BvZjgbS5vGWhP5PhPOfrHAWkwsWmsKTKsZmA
	 aSakLZ/eJIltA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929D4D3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534897359.24839.1418138690719276631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ab90135c34b588bf5b184e594056fa62cee204ae235961cbff3bfa59a05bdb
Date: Wed, 10 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765348973
