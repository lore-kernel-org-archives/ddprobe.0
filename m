Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4496012E75
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727520354; cv=none; b=hnhkiVVCVDrr2mG7GBk+PnW7dhhBBAr0S58eixDwSNhd6Yy1fTA+7NqIp217MWOXXI7l3RVKP5Rj6cgqmpQAFXDrZukn1q/APb8bk2Xt+IdpDW8Fm3MEBcnvQwUHReyHBjFsI+6s/I1jAFTHmJ3q+pZNsnG0qiWg9g7PWIIwNDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727520354; c=relaxed/simple;
	bh=LhoVtkPLUrsiQFGeXiqFyF8RMn66aBZAHbu+q37tfhk=;
	h=To:Subject:From:Message-Id:Date; b=aU7Yac6kEMGVWQB3pR7ragD214XeUTrery4ut8Ue6HhOBLKYfAZqxrz8tFOlwuZxOcPjKcR/YyHhUHGaz/4ykeO5py9kNxAgp4GVVDed9t64eUHBGbNi9piXCsSHfZZVw557Cod8jtCR3/oMoxryeF2ECjDKD+ODTpq/FynN0os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJ3LUrKk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJ3LUrKk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C11C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727520353;
	bh=LhoVtkPLUrsiQFGeXiqFyF8RMn66aBZAHbu+q37tfhk=;
	h=To:Subject:From:Date:From;
	b=JJ3LUrKk6taAL2qfv1NNcdVJ9Ql3e3pzmqTHPozc6fxFtO9sQ9cZzkKUT+l8wumtb
	 QoiEo3JaH3qTDeKwVQUblbYgYPKG4qtPkOJ/vpYdSHYL/LOES8G12eltcNxwITdS0T
	 0qxXNLX5RGnBdm+UnhtSSEdyGox0w9X9uRKFCs4/Yvl+NxUFdcwrGNOCPNgxKKs92Y
	 cqO/RKx1ik8Qf9xLNSWmvhwIRdPn698GR8BvNFU1EgHSd69tEpgs95sFx67aGpME4Q
	 bbsSx8a/82YDrMOoQhaffDpQbLiKgmmZYktLIHQkbs0VYrVEeXOjXpn25PJM24Y5E1
	 6tiC6oNEUqsLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9BFCF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752035363.17119.17622494325316136160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: add44be454029ebf9172c3efdaebaf866284c3ba84e4dc1773a9b8bf90f62236
Date: Sat, 28 Sep 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727520353
