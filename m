Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D3A26D4F9
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764218574; cv=none; b=VCPNqdgmBmfCXgzZvAuoeiyUWActlKQ9uoLV1hPsB5ewLCHKUCgSbjen8JdC5xjPTtIzVVtUn9zn+RkTOEHzTb0i1zWZ9KrBRl+RghG38c7D0g0X6rjRM1K+zDc57sQ3UTcdZl9HCS4R4tdCffk9qyHfFEsN4Hnlv1JpGYx643w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764218574; c=relaxed/simple;
	bh=YeCYVhdFPxK7zV16zvxoSZclHpGKEknwRD3W4e70U8g=;
	h=To:Subject:From:Message-Id:Date; b=T08pSCdkmK0oj6rxYCdLyKER9b5NaE5Ric0/2kP2gYfwQVOFN9ImW0LCfswXlnngnk3yR4SWP/F9/nVKzWD55GHvNuxwx2d/ZkPX5SET7JzvZc15VkCeS//++h8gYXyzUqhRvfN54OX6z8i/kO3MG+P7Lcds2tXdUP3o8mjFJYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fEFMsXZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fEFMsXZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5315C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764218573;
	bh=YeCYVhdFPxK7zV16zvxoSZclHpGKEknwRD3W4e70U8g=;
	h=To:Subject:From:Date:From;
	b=fEFMsXZ/gR5wOd4b2Ug2UIOT4Wd2+s6kT+CyD4PMJUa9SUDiXqfimPxqhl0um7IuF
	 Qpc7jMptlkHTd1ry60i4jn7ajJGO3+DKT9DvTc1hEHczpdNz/iCK7c66LYtr68cAnT
	 HnrJchQ9Y4DgSDxsJOUTX4HUzus+DRUYVemfMw6VM3dF2nq1xkxXbq8ovuvuXTKal5
	 KUemyLfnSnqHog3hRHKlnUklJnpwwwRDIKEpSuX55tlNBsJjU4O2u+zhkzWH+4Vw/J
	 P6Ph0MWlSdtJswIIRo17Ad9TuMwd5SfMvLquGtgGhfqo61jmWlaLp4/1zdoUzQV81K
	 vce9eA3rmW4Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7BCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 04:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176421857358.28724.15819285986084703741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83d1ebfce72d27b96082945ad7270502c230bf449099c55b38cd921fc3fac694
Date: Thu, 27 Nov 2025 04:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764218573
