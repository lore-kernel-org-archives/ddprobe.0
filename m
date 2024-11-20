Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375EE156968
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732083954; cv=none; b=utd5NGErJ7lEE0M2C8nZfDbzeHDabsUCyZm3sZoW67xJp6opNBvDKw+u3g2TPFdXv8zpzQF47OmsNwOaYu8daCz+no0SKSp/GGwtGSXuxOanYhcdvmM4grT3CwkU0vGBu2aY66CcRp29aZJmGPslsCNvTUY1yYeVlWbRS1og+rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732083954; c=relaxed/simple;
	bh=Fk58mP2sjbGCGNmvOGCI9tbxqtH/+ehA2wuJSaZkVNI=;
	h=To:Subject:From:Message-Id:Date; b=bVMO4o4WjWrQiJy9Gbqrxw5SRuTIMDIYdkuPzwk2IhFjT5E0XsMl3Cf8ABIWaP+VGRHpyQ6ZkDNqDXQD2bya7v0JZVeyTz9Ouw6dtPlBOBRUTIu0HZa5D+KRM7EoQ5Jv6bn0rtSzJX4HKk3VV8KCsMsrD80Yf4hyRHMAg6o14X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwyooWuU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwyooWuU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8D7DC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732083953;
	bh=Fk58mP2sjbGCGNmvOGCI9tbxqtH/+ehA2wuJSaZkVNI=;
	h=To:Subject:From:Date:From;
	b=KwyooWuUXosx99X8kCkYk5PwEb1iJzChDGwxsiafv9+jNQBCrsX89KreEAVJhW4vF
	 Zqowu74BVe+MK3JCRr/YXQ9U2sztTGXBBD4lkpyMkkAASfKu5N0Caxms2NgbdoFqIf
	 s8u3CwZ4n+HLWkXrnrnHjx/LXJaU6GiXJ/dcJQHDN1khXeD2vP3fqVAOwtEg8/uPqe
	 J4Arl4Z/qEGZOj5VkOWCK7JcKRITd+EDLnQXYVTMUYoAVny7VgaNbXf84KE7RgYmBj
	 0EB1mh0JRxZI6WMztHbRv9oshjzGltfiRhA6VafuT4J/sErBzGWWEKScgFPfM+FEy+
	 wTFmLgl/WXNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEDDD6E2C9
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208395361.25319.2981650794923347624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e95656624d32203159fe321476225538c5018fbe78a26a45d964b33a6f927d
Date: Wed, 20 Nov 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732083953
