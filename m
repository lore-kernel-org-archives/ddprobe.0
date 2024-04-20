Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C87625
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713613823; cv=none; b=R+bzAyvKRSZyTT3hToVGh0uR9EEU8ldBWmcw4dOXbkgs9pF5nPuY/qtMS6Od4TwYX+mZq+oQVXiYRALoxxzFaa0WwZ16IPWzQYVgNVXY6dBRfKFmlC8UG4tj3y9yQxxmxP5w/Cox7HyZVt0Ztu5UwrCF4vT7/DJRC9tJvn8SazM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713613823; c=relaxed/simple;
	bh=Eo3ou96EzJ1sCuCmGzymMOsqYBQrCcjjHLur48XW0U4=;
	h=To:Subject:From:Message-Id:Date; b=amkqEHmHQPh2wzIP6ltlK6bJDdOkx2mWVZMQByQ3SpHTdmNRyWPTsh/X39HMinRAqKST9HWSKUauk5X3t4xoHOrjO8ukM7wGb3YsYmJDI2e+0kgA/ygQfwRUdGKYCkTKhg1EQfq3yLlpuDxfjLu3vuOA6LrTjWgdLO5bIDIR8Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVUNtUrl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVUNtUrl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BA4C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713613822;
	bh=Eo3ou96EzJ1sCuCmGzymMOsqYBQrCcjjHLur48XW0U4=;
	h=To:Subject:From:Date:From;
	b=cVUNtUrll8Cqv1o1N4VLtLeTWNMpYDE41GWyd3hMbhOktsNBeS1hRuFX1Xr5IVVsp
	 eriNwmSk0bkRwBWQyi0/4w1Xw2yD10J7NqH26xkMgcgIPbkOA2vKARwGGRhqmBNuLe
	 IJAH6dpWTVWCLWMfU+VanlFynSKJcjIbtsLDBTG+ArSy/p7TSJXPqID7MX8b89iOob
	 cCA6ScNqV+RFRpobfWRZOCLJ80jnPUIEYaOcDyHxfJxnpOgHkMnO0arS+/l2HZnmoC
	 ZDTDDe5M6bE92x9HHbYIjZxXfvncy+5LPHzeH+YvguCV0TXA8iTqgAHWvo2mqOFaa6
	 2oy48m63vy+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF314C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 11:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171361382277.18053.9657518046749779534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9029942f05242db476c20651742547c5a6e208ddf638286eb2667be06ca2ef3c
Date: Sat, 20 Apr 2024 11:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713613822
