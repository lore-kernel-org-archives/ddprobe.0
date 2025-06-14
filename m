Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20CF26D17
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749936594; cv=none; b=sJ2jP8Yu3Mc2kwL2emxZ5dEmIxy4xHlV/GpRzurcz8NKZZhVQXLyR5odu79FDGonUBm+xgCCcVdU1hFdJnl4aFnRVXwrE7uRxHcIcwq2uTPUgd0ufWb1Al0fex4C8OEGyTSdlQ1opdFsTcv6NmgzJthDRntdownwUbM0MkQjNvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749936594; c=relaxed/simple;
	bh=EbylAWDGE05MGp0/X2A8/UeHXbmqohJJeJgGMbNYeNc=;
	h=To:Subject:From:Message-Id:Date; b=DyyncQmZ01egzs1UQKB63MP8Pth164DS+zuy4pIKO2vWQ8rLFMg9BEhOxzWHpZURzOy2P2Oo8BCiG9mRGWPY35q2g8oaQSbp7o39/OdnDppB1eZRYqFPk9brf6TrwEVtS29KW9c1BCIEEWqirm4KYzMZKkXnPS+1eVy9V/zneVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+AE1MSP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+AE1MSP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8BC9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749936593;
	bh=EbylAWDGE05MGp0/X2A8/UeHXbmqohJJeJgGMbNYeNc=;
	h=To:Subject:From:Date:From;
	b=R+AE1MSPa+bfOKPiWrGhiFI+Kf5oH4gje4z5CL7JnsJ32YZkYhr/28p+WlL5Xt+0O
	 PSs69EvkYRHwDgQGbg6AUrC4vLYr9APjawS0YHk66sSUmjnDiV1Of1jedPI/eLSFjr
	 QALNPF4PLDfKgxb086DTQr/tZXGuIsx5QGXDmMExM6oJiKjgBuN3sIr1SMyJHmFZJS
	 mng18xE0UQDhpZ8J35y446gOOcFsVkK8hw+ptVrzvgS5yFldeXBa+FvjweHMLCCQ/V
	 TW9UFil/kUl1NEFPIGWY5DwMgAzF39N/NaMt2MYCCb6LAo08XT3RP1U8L9C0MdKqO0
	 kppWLjyCPWczQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605BC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993659359.30891.12367194861161326796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51859d2f44c800e465719c3fdf2109016fb8592f6371bd95f229639488ac323
Date: Sat, 14 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749936593
