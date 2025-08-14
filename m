Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CD8B665
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755197394; cv=none; b=OvD7Uogep/hargwa0/mYpS7cCL+oXzZP2vFAcIck0xtUziqfzOpV63m4tpt+cRFKkvBfawt5oAzMXHDgAURKxfvt60DME8Uru5VrSgp7qzHp1yf4FqsR8JyO2AJEWPV7GDFRKtjSG7GaLC60m06ThYy681s7/S93ivzEemzp/as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755197394; c=relaxed/simple;
	bh=D+xmxXD68TwU1D0GqiEi7/akaVkn41fsGFJMKK9BLwc=;
	h=To:Subject:From:Message-Id:Date; b=egGTEh839Q4LbKbqCYnO4Iw4AkBK40vhSA15VK3K2lFKH2zoiCWw2yUAfybiuu1cDjwUww7v8xzVo/zFB6tUlDFU/4e6srm7YH1JQnDU6ujqNwT2E6e5YDtf1RHfQUJ4m4eEdgvZ62JVK6ewMe4ma8aawKqbEuEmk7V/3ifkgeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXKpK7UX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXKpK7UX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BF14C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755197393;
	bh=D+xmxXD68TwU1D0GqiEi7/akaVkn41fsGFJMKK9BLwc=;
	h=To:Subject:From:Date:From;
	b=sXKpK7UXBsu2fW0ctC2DTWq+7bVWRrAFzQUlahmONSeFFBGB3ZwF7i7T4LXz7fAg7
	 x2jdoegZ7sC1jaidWjUc/sbGRqLPknhUOOhjgOM5hq1R6s3507rhnpuZt+homJuUQ0
	 GfruPdVg+Xtl2NKWmEURDWCsU/PKUxOeC1jTZ9dnHc2Bc0E01++NawxGwM2Sut8lru
	 BtXLns/8smN5v7u93mLhOD+NFbzzKNuzQFk5LqLOPiTkfdR0ZSbYPl5r8bzYvJHrKo
	 WboY8FVeiw3m0cBgU7OJUIkMjsO9MgsezFX8pRb94AIGbrbadCGyPtIl/V2JfjG9ub
	 EX/PvMbohTxiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6ACA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175519739357.18121.6891710019199066460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e69fb83ab94fc5ee039ce380563b453801108be2f46d75690d2f801168b49d8
Date: Thu, 14 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755197393
