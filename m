Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A591E0DE8
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756429794; cv=none; b=IroIne2k7QSJ/bBe6hw7MYtaGBx8rL9bNofhO9snYlu/BAvv/TB6TeM0GBhfD3ogUQqEpRjGS5puqRfSOa04Ni99hR6Rj1nkvCf3El/JpLo/ml6puEehWkMi8GVxrY7tUXgwrKd3qF4lFdsyM9hqPT+j2O2vTLjiZO4BfUrqdI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756429794; c=relaxed/simple;
	bh=J9m8N+A3U7ZhQj0oDdGpprwKyftolg7qfYJdrgm6LG4=;
	h=To:Subject:From:Message-Id:Date; b=RpCALtQB5STQOUhYugvMkxkdPPcVH4mcPu8/lTB1cC26fb9l4SP9Tpd1S16vpmZ55dfsmdLJBWebFiPYIZW4/j08tsI7bXd3vkVsPZIOqjSCfK6+ZzxcQeuQ1jvevyFw+TSKaSOOvsI5NRzToOJtLdqUXkc78g1VbuwqOMMk0dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kk3atzio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kk3atzio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E455C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756429793;
	bh=J9m8N+A3U7ZhQj0oDdGpprwKyftolg7qfYJdrgm6LG4=;
	h=To:Subject:From:Date:From;
	b=kk3atziobxlceUO7z7kufPxms3gNJodtpsBZj6fBMlQxAZHMXTPq0/5N7wfQehtMX
	 9clptEj3RuXvoOB/LV0GUPeu/WztUb/CdSmmyOqZP+EdIf4q+MjkZj53X/iQRkO2Av
	 m0C1KOGI8BoQKV4XQQPTBk2Pue/s2QOmj0jFeRyMiQNX1eeKmzeHD2/ZCw37u2yWpq
	 MGSP2GcMKxVE1d99lpRdGkR3fSaFKUjTdMx4cRmS33yuZWdZVsoZzfEC7TJon1AydA
	 saULPyTeFw6z1CzyAELinKuxXjMxiqJQ7nnD7PBmbA3PWtxH5oZ+K+/jaunoXMwghP
	 nZC1HclwL611w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DECA0FF6
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642979357.24815.7259911118797104979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a7543bd1e544f4c682ebe1e4c27d82640badbb60793f42960f403cbd31f555
Date: Fri, 29 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756429793
