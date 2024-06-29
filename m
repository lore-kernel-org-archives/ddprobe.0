Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC701DFCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719699863; cv=none; b=b8WF0++pCwffUyn5UKA8FdC/cSlSYkshi1NUJoEc7LVt/tnPxqmTqE2r2Bs9kmksN0FevKED9WBmut9OwVZAHsI6wJDeIOFUx2OjV31uPy3f4FeJo0ZE9yP07agIWVaBqo5MH6ipa6k6fWbi7YInelxiF6KmqgdD3ssHMDXiAFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719699863; c=relaxed/simple;
	bh=HtX29MsLfo0pRbgwuA/hFiv1ac09K5swtMEbvAo/yMU=;
	h=To:Subject:From:Message-Id:Date; b=ZZ6jTO4MhTk5RBIoQejD6e6s0sqCYmdXRBV0Mo7osbnjAruQjcEKiMhM6rBQ0RJBTiV2BJVg1myfssPIjqGMLKkEa+O1ZgQECGygocA4ezVQE2QslNMmKG2szvGUOn4HYMDh+DGjjLdYHDV4puQ8/gVxDeEtMKALEb3WRD4UHX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMg8aUyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMg8aUyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3BAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719699862;
	bh=HtX29MsLfo0pRbgwuA/hFiv1ac09K5swtMEbvAo/yMU=;
	h=To:Subject:From:Date:From;
	b=rMg8aUyY0A1Ls143DvHa8Db/6mk+hVrPufEcQZ26DWxnWO6rwhJ9ySL0W/ijkVKEj
	 BkH9jjiBPwLPiT7HuZEoA9+1JkmmLsPKoYhB/seOcRRMxHsLapue3y49iJBZu27/wg
	 r/xxn+Z3aLkw4jTq4qpJNOL/iqluDuT88vLHBFbwLjbuo6L3uPCQ05bUO7JWrT8LpJ
	 i0pwV+/3MW8wyWyskboPX3P0/zsn1q2gFMD3b31HOtP16EV/iiANIL+bod79wHnUz9
	 FHwlcDMiOEIfQGsAM0X3B82/yaWrn32oGJH+v5PX2v5IjljQZNIbRONFzrbNAw9Esj
	 3StdJ9/fRYpVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7286C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171969986276.3315.5790740656040789695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3c8fc59ee60c4965e7a679ea78dbb0caf4456ec5e4bc436b791b953c3781d5f
Date: Sat, 29 Jun 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719699862
