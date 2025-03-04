Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F840276D35
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 18:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741112934; cv=none; b=cRq1fn4am06UxjXf/OGPXNurXArvsKzrzq8G1I6nF1OKKPI6kGPlM7TcQauG0/2Ym/vTbJv6NUb/1RURAxJBkDoAAqy72tTOUcF/t0DjFFmK+eM50MmzZrVupSt0BhvUqvZzQqixOeBDJtXHC0vRLx5AKLUzCTZfi9hJ6TRfwDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741112934; c=relaxed/simple;
	bh=zOWNSc3mt+Taf5S10QXyqX6eK44ERdn2nQeHHTIJNAg=;
	h=To:Subject:From:Message-Id:Date; b=H8J2Dx5NwgWoHRMGsfYIXhjUoAVOH41VJhBfVyFW7XhuxmyVkrGay3X6SNwl+FtpA6LDrDXO294CvvVAO/8pm/jL1oafm2lbZDjA8T38ixYmngolotHAKJxPg18ARQAKcCeUMhs7MQfXnRYGZxdQdloQBPnKm3ZmNf+5x1oUkak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsvXEQ9r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsvXEQ9r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDF3C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 18:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741112933;
	bh=zOWNSc3mt+Taf5S10QXyqX6eK44ERdn2nQeHHTIJNAg=;
	h=To:Subject:From:Date:From;
	b=YsvXEQ9rrg0BXusZ4PynV15u4whRquS0Cy6V+l9wDmb1U3CbIl0eMA0yhnGwtRYpe
	 yaS+2J32x2fzId79FmIC8s3Xu7pMv1hcRAwFX4H03KQtHd5ca8bK+d2YGMnwSahkDB
	 GcvFqvAchHwibu3MVop05oFNz5Z99ij5RzGzZ33YyVoXN0lBbDpL4hq6N28vPWxfEf
	 lWtPjFfFYH0AFhnINTVAFVZ4On1ljOHRF0C78JClS2pGhrqjyFGGEIKNyA5DCTum7q
	 P8dX9ZW3SjSmklC1FGYy+mumpi5AK8mh1Q2vm0jNUEfUOYjLY69jxEhagMDprRWnZH
	 WGVEOaJ0qvh1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDA2C282D2
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 18:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111293363.21884.16727564656166679697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb70b1a5d6aed87f44e9769f9f025efe9d081f7d5bb5b49a345613a0d4b94a62
Date: Tue, 04 Mar 2025 18:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741112933
