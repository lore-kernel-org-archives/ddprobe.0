Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4162C0271
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764799974; cv=none; b=AsiugHvyaKAm4JXmJKjJ2HGWLWX7XYPcG+30PM3hahg6P4jMdm2R/RTV+ypJbr9ghe4yo6NaLz3Fjpa9wnb5TY6kam40vXRRMQXTBWxEolgk4T/h3zcKxROCu/QD0etSA7WxfXsmX2ZooxPdi34UYZzFiMEDjQ7Zw9gVg3YtV7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764799974; c=relaxed/simple;
	bh=ZX41ZV91tNs0co+oQhk85ny78JDk0FiUaJwn6DUfov8=;
	h=To:Subject:From:Message-Id:Date; b=flzPNt+Ai+rg7Hp7JGvlafEkFAeXvAispCe7uLODR1BHTwbDmGMrNAdGh5m6cZiMpcQabEtrSdR7EdR7Ou+IlMz5z4gjA320GaOvr9NaTOrTr+fHraxUcdyFfwHTVxK6RxbUy1fQ2AxQRRyJ3cf9E1K0QzZXfvqjCJtszb4/0I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEcCAUbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEcCAUbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BD1C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764799973;
	bh=ZX41ZV91tNs0co+oQhk85ny78JDk0FiUaJwn6DUfov8=;
	h=To:Subject:From:Date:From;
	b=XEcCAUbZLiTXWItrBtci5Exdhq8eGvxNWw0DFwkvFpkIhT3wVNN68AtkP7NKa1P9Y
	 UQ8cAosvLVOwqDUnKTOqVD3SifiFMAClH/ydsOjsbzknBDU/4+utGtFuKwvU5OV9FA
	 elXOJNklcpdxEWXm8d84wNkW0+8v/Goi6TAAv5/31QEULFIkxneiDVmLz9TWKP+dAo
	 C7Pmjt5pnCPX25Qe0mLjxQZ5QzuHNkhACnNp6fGd5vFdjYyUg17GU6iKUcKiPwW8+C
	 e8UUCLw6tALWGD6pnSU4FdT/I1S9TepsP2ngEHY7X0aqDl3Rcccd0kBOQIpr5y0Rda
	 eDZ97lS0YBvFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFAED1BDFF
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479997361.5668.13923541157350853919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1150f0d077b09dcb9bbd2236129ac55ab893fde8597efc59eb60c3d5c3992133
Date: Wed, 03 Dec 2025 22:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764799973
