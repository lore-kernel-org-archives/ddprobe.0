Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2152376EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756494595; cv=none; b=k7N3TMwcncoRQdPhuxR4iw2RN2GtHGwQEWreNu8QKryapi6rxDWTLQti1D+hZuyeAhCbbsU2UOhXlTi1RyUijzfrQSbNnBKHyTad6WAhMIQqZO0jOtS9yYSYlOU+E6B5OgUhmp21Rzb1W/OQhHQbSTx2nXUwvG0Xh+Z9jHWcQUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756494595; c=relaxed/simple;
	bh=GmGQax+lcpdwgOUvTu1i9XB4ePJTbCH7udVso9eUuPs=;
	h=To:Subject:From:Message-Id:Date; b=HHA4OmQ5EEgyGxJArCHuTGaDsy9Vsu45ryrlevdJ2XHy8TLfdYHXy+xQADajdkpOubnIZjj06ZK2JujVpkv4YV95mnCFfQ2Rj2H1TVAmz1HHX/8IPbCOiTiPK0k5WOKfmA9UVnxYwkS+fnR3kexg4snJ1L6BAhD39SeJaK+v4wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvVSlRHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvVSlRHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F784C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756494593;
	bh=GmGQax+lcpdwgOUvTu1i9XB4ePJTbCH7udVso9eUuPs=;
	h=To:Subject:From:Date:From;
	b=LvVSlRHJi+er+Avxs8aO9nUGfaZXLDxYIb227n8gHB3Nwbk6xi8RyNMCbQ0OSzrTG
	 H4hFs/meX6uanVl28AqjBJw+aPrHkvJZxFnxFFUqUp+hLGySzaH8RzmOOoFyyGD0Qs
	 2o19I9SKEYVP6w3SQje1/jYa1uyw39guJ2Izgr8CgCLR1BNghlpk8Xho0XPz3oD9dq
	 NKUWlC1vlFTDeJBfRLmZ//U7oFDKhsdsusU+dmqYJIiLoVWxaTw05+Q+tsSueZbZ1T
	 LY2XmJpI1t6fjUzA6by+MgCt8FNwkUUIw+gZoeZvT57LfPlWEl9jGZQbk5RFJFxryC
	 Fvqg8VkqUA/iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8ADCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175649459357.506.9320448787788806098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8744f249ee803a79166e9faea02dbae669895b2cce4d5fc471a24d6f0be90438
Date: Fri, 29 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756494593
