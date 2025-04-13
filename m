Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466B064A98
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744573794; cv=none; b=bnLPbsDacayVD6a3X0XFbVItSv6U50P8doZraACxXiZrrd6kVZhxOEH98lnBdNt4x7IHKTot6fqcW5lirGJHx69NCQn3szH/Uz1bQcRAg3m4bRdJeCqKkBuaA6PvwUhYZBLNnLEPx0hDguuhu9lmHneT/5X4eT/XIwH9YPyy8vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744573794; c=relaxed/simple;
	bh=VF+5M5yaG0bfgNnva+AaIvP4VFkgqyLZVxMGOoTxy0Q=;
	h=To:Subject:From:Message-Id:Date; b=OvDJQvTiwIzFSY6pCFJ1il0wqVFZBTxN+4jn0rYGK+1Gmh6oU/uVrmfTDogiIyCh4i+5THOVY9fljNmNlWe5Pdx7VgnlKCc+lDgSKLfwQJJDVeXDGibqt5jdboNn+W7/5itp6ZQ0rkJkpeDVOiju7vm/sFI/z9LMQHi8fWm/LaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NjVcNY1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NjVcNY1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE0CC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744573793;
	bh=VF+5M5yaG0bfgNnva+AaIvP4VFkgqyLZVxMGOoTxy0Q=;
	h=To:Subject:From:Date:From;
	b=NjVcNY1sJVM3JQuZ5ZnjqRqW5ZMTkvlSXZPDS+XlTF1A1Ua/qJm5kDSXzxal+rl3M
	 AYAVRHI3f4KNFi3rsAISwd7gPy4UTbIOnsM51EvIuvaDMspw6fCWTkRQVDEfXa/d6D
	 sY/Qi0+kohXC/4i/GRUJ1eprFd3J8X0hQq2S+0rSEKdcPz6LHqsLSbmEY4SOo5m6vU
	 RALl1n3yzR0yr+7uxXulZOvnjjnDK6UHIlYcNVKBYx2jLUtEfDgLDzQJcjKMYwMCnZ
	 1VTvf5CBTClV65aKGgL/bT3iBZOk9dlkUwJd4av5UCfijuBnt8K5BT34OA4cjkAuIP
	 TaXbFK9U1+GTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95956C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457379359.12831.5835648875030041455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a347f726325f35477939972394eb924af3acc635eb75a66975a29c8d856c991
Date: Sun, 13 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744573793
