Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A134366
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746812994; cv=none; b=mHjHe6LBIzV9G3jnODQ1z7cdIxL4JqT1nxio+2xmlUSeyexNWu0fZLs1lXwfnzG2mWlZmjp5Ieupysv9Ylr6AVCxaqjvQ9SwKbPkmDwjxnUgdqObBkVTbccrI2Pz4UXVv8OVEwLZngp8o32CJt9nkapfTHnlzZtrBX607KMSA3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746812994; c=relaxed/simple;
	bh=bteHPGm+jwiklfJkLhrmIQztickwqWx4Fqn29Gapfm8=;
	h=To:Subject:From:Message-Id:Date; b=ZfCL2VHhnoHoiUh7mwYfurioBK4+964VL+PjJRK8KPvKk0+DL+EBBMS0eW0V4VwuzDc2yeQhMMIno4pwkRMRsEAGt5F2Kl5ePBuYvCeCWCLO5OZpUg3o4+D7eht3ZUx5fWIXum/3qJYz8Im2YCJmO4lvcRac+ffSguHjzFboDVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LlwKz2CJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LlwKz2CJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07BEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746812993;
	bh=bteHPGm+jwiklfJkLhrmIQztickwqWx4Fqn29Gapfm8=;
	h=To:Subject:From:Date:From;
	b=LlwKz2CJfriL1HopZC5kL7UQEXFKT+vPp11WkZc2pKgx8NesVQa0/mvT6o1gG6XgX
	 LTiqoGZYJf7KSBI3wTWudDSnS+DCYarGnNU8njyeD3cUfUQY1SbcMO4GQRtViovKFD
	 pPiNLldJpkBwwI1jVLj+GuBG6qPdUVsmMa4Ipq9k8wOBaGgvdL5r/vmIGaJ6BeQ4OD
	 +nrj32BAZoTRrXhc4VFJBdJJE4X2bdSy+eQ0HoMUvbYPV4BPyy6nFph34g8HUIsge1
	 vqgUJBoAK1d148am+xbk6Mf+h2C5PSg3gzNR794D0fvdSuS2gn+6K7I+haaMoyYrgn
	 9ens0VVPeX8Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91936C3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681299357.14229.490009191720897236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b96631066934cd448599cce69c8dcf4493c6334899d04e2dc87444b11788b8f5
Date: Fri, 09 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746812993
