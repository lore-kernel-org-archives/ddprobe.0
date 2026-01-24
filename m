Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240BE186E2E
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769284434; cv=none; b=jbdQTOavlWHnxN84jMo/AmGKYx4NIJ9b1cLA4a/GmfiwJZ8tm5xEFS4qum9DBgwByGda+LMRwUVOVLtIAh3/KU4NFOWtjn6Cj9KMgXIlCG4PZ0aMCqT8WDcRuPSBdSBFOnQ6InhK2ZtPmgPv5W+yMoT4CaCTer2mPNsbbmMz/GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769284434; c=relaxed/simple;
	bh=XjQkl7Jjoc0aelwQZ4qYtQQBYB5gaGZB5+38i2V/Hr8=;
	h=To:Subject:From:Message-Id:Date; b=mXd4Ives6gtkNCbcP886zHcFwvBBRb9AHAqZ2Nzq5O6O6W41aC9ruOfpShvyxtLYZmAxfvhh7NlzwFLQZoHwB6nMhkEjGmzwVsaRUssYA2jZn/5EsBPfnh54ifD6PRrY7fXkk+GsdFeub2jDRx7iavInfr0OofrLNuMdkECIt2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKQQMf6b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKQQMf6b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B1AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769284433;
	bh=XjQkl7Jjoc0aelwQZ4qYtQQBYB5gaGZB5+38i2V/Hr8=;
	h=To:Subject:From:Date:From;
	b=PKQQMf6bpstk72J6mAZTwL2IpmkFUE3FShXDbu3wNMH5qqaURfoOLz5RzREq8cgcB
	 uLyVvI4/wO4u0e7G64KliLuKcHljJncfg2fZNq5rTY7bvHUq9DYXDFpIV6hXDa7UWM
	 BoWuDAQjW6M/9gK0QdPzz8dVb9RyJpk262I9zGphHVjY6uU2u2jpateE0EMQymvPjh
	 sAQ5BWvMGB/5ytBuL5E8S66EcYf9FygNFGH0s0qxplLNJgX+Rir8MAISNRshkfr+/k
	 Yjx4bHAWDCs1WzzqsHR22N2TN1UDhKmYIXTLQJX2rHZspoKF11jPE+pqTfQNw3eKZ9
	 mSuGSB1Jk3xDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D95D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176928443357.18961.15872120623581991882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8e775985efcdc40792125379b61b92dbbe043f45171ac22cbcb19d571015ff1
Date: Sat, 24 Jan 2026 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769284433
