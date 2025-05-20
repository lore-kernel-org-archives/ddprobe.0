Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3480C1D8DE1
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747772394; cv=none; b=Xg+ZpFns/BHOsQb1O6wZRDV3LbB6URVN5DiTEmctge50o6JNaAC32z7YysZz7joXOY7ZI5fZyzzWoWosr5Xv3QUJ91RE3cqq4PEgaLki1wqe3H2XszXcpxvIQ9CIUY6rKoUt7ix7zxY3Om0avTYMb/a9dzRXosrvBls2Qm+uTvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747772394; c=relaxed/simple;
	bh=BIGir9jc5T5q5/FX3WCi0nlAqk3d78jK/TsA3rewWWM=;
	h=To:Subject:From:Message-Id:Date; b=Xb7t3+7nkksujFD8ouoW34ibukE4jUrE6N0lVJxxsnfkO+yd5XqrWmhXoWjbsnFp+V7gk5iU+Cw6GJHkBx1AG9ldpAhLWN/p0xcWcU+DfvILUzdfNOVrVQQrxLxoVbvaahtCiHWBvibND2nYhPv+PMfuefsDM1l0HhsdlM7QLVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0Wkg+9Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0Wkg+9Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD9C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747772393;
	bh=BIGir9jc5T5q5/FX3WCi0nlAqk3d78jK/TsA3rewWWM=;
	h=To:Subject:From:Date:From;
	b=M0Wkg+9QikVK9zrqwPD6NipvwigNMmTPZgnc3DYJAfIMJJjOQIpuwOSCMBXt1cT35
	 15/HQw9toRaknIaK5k6C/TjhM7fyqSsIzBt9LTDJ4N3Ob4j8Zs+1UUI+PqTg0NGDAv
	 WXm7duhSnbGCoeBdD3CkSgRp3V62Ffuiwhy7MtezI281uQL3MTVoPIasOWGl6JOQWk
	 g0WJWbk4Oy5AZdn86h4DJZtFyf1gDXXVCVfUqrz1cnOgTh4c4hxqyjtYBzNGap+fzd
	 cv4m57HsqGoeseTwY2lSUw5SjXx1/aUYQUjLjEnFMgYsTrRo1iWPft7v7XcZKrIS54
	 H98uQV749IujQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFD6C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777239357.20204.13234267468722332087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a2c31cd055e3d6dfdaab00999cafbba7ca3e34eb6bc3314cf93e4ab115b584
Date: Tue, 20 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747772393
