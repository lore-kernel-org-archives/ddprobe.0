Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E1E8847D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706353697; cv=none; b=gJGsU6e/K/XM9OaK+M9HM8wMcxOrnnxPVdw0NwCjCYrFHa5vWzksxtmwuyy8dTxSyLbXNEO4O3BG2doQMKo1Du0zNtr7VkTi/7FtHfEVyWiRDdmf3p8wsW9ERtO1G5jZowhK3m1aWY0VxnauArAznEUD4Dw5WxzqV0h4DujkWbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706353697; c=relaxed/simple;
	bh=7B+qpagt6+wgX9kywwfjey8ILLnLdqZBrlie+oZJFyw=;
	h=To:Subject:From:Message-Id:Date; b=g3OXTuwoGHxreEZJRF05+OisAeZ/dhQsn4EvSfZZZOcYc0qqSJHv5YHv/M3zgEra6tfjBqaTcE/HFW6Xm43tHAkz+xAprtXaRJyda4yvDYUbDMjsKfSGcOhl/qadD58hs+6mYe8dTLpkY/yVw3GJOIvSOMGTSE3ZCTcDwOaKfjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecReLeYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecReLeYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75234C433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706353696;
	bh=7B+qpagt6+wgX9kywwfjey8ILLnLdqZBrlie+oZJFyw=;
	h=To:Subject:From:Date:From;
	b=ecReLeYBTT3qU3FZ4y2Sy3VSPRUbCIl3aopc6Bnl1TVxXEYqWXwA5IDB0mj6O5LW9
	 NpEEHIWgIAmjWam6OUyscGxpl7l+PuDXbPOpfke1ILGg8aBckSw0KfM9smUOs3z8CC
	 mkOGYw/iLCgYRLjS2ogWXVJeEUaVaHLq/84ZT9UWDjsub3W5Haeq1ckSSzMWCLQKpN
	 z5TwKB6S4bkGFxoyIFgZ2lEFNyidqNJRDPIrzn87OuSRck6fzeCcEJKv+pdCIq1S0H
	 Y+LMz2Pu6kMGEMTBBMfSrCA2/PltjI7wQVaahGThZjW9GBQ3B4hUdnEdZGH7UVuduN
	 lWY+Agh3eS71g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B4CFC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635369636.13103.10373329636591046917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656648a3c853595fb4ad2818f6f6afea26cff5290fda865820ed0e2e885b1558
Date: Sat, 27 Jan 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706353696
