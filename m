Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446FF13A404
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713307763; cv=none; b=aBP6Nla9Q3pdyAjHafh8whoMqNZBAnQB88a97G9NvfNPTRH7OLTIF/FQGNQSC5wSunncQFhtwx7C9UP7ue6f2VRSs4xfpRDUzArrwvEXTX+odQtasibkiisTDQrBrnNpj9HBgzwMTcwbO0fTTp0isB0j7gr8ysOQjkLvV7csJSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713307763; c=relaxed/simple;
	bh=1txRXWwzowxVqP4aA1S/ETVWHczbUBj+jYGhY/jdXQE=;
	h=To:Subject:From:Message-Id:Date; b=ivYCknZlC4f7ZOrcsxfcGw2I24QmzDiu6iGS/Av9C5rTwz/BzPbGZujHO+uNSy9ZpJocOIfU/qb73bOXindWX7du21JqeNjGCTO+13fD8ZNWfboHR/zq1RXjsSNa18LD5v+bVbJJoVhWYRoPp1xRw2vybuFVV1rQ2M3tEg2Ka5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FbOihbg6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FbOihbg6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D309AC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713307762;
	bh=1txRXWwzowxVqP4aA1S/ETVWHczbUBj+jYGhY/jdXQE=;
	h=To:Subject:From:Date:From;
	b=FbOihbg69cXzbkxXhlyoptf+/wCXvkJmTFp5INCxbiqvVOSYB1VcaFdbJEWZhlpjh
	 AAnScXG8qA9VVDai6KfRPQLUS3FR74PxlRcK6IX83VgdyOYvrm00tTRVwpO/kaAMFm
	 6lwH/9mmt/D6OVsU3CiTQq4c0ko5y9inlpkMhSmiCMXwLfVbLNXYNKz3p1bz3qFELM
	 t6o9Ri+3FB2GWhAHid9RsF9PUs3bOUMmffi6uIRmkXkWz36jIy/mso8ziGCVuMZ4PJ
	 SR3lGZ7jLK08ji8xSS/WLyyBAWE+JUIhA8ZSflPf2j3fRwtg58bD1n+uv/r3cBoFkw
	 E8JVTE+UMDk3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8ADC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 22:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171330776277.5494.6829233696552584982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34969e71d22079343f3e1fbdc544b894df1d24a0414f4a86c9256d76abf5ca8
Date: Tue, 16 Apr 2024 22:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713307762
