Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EE012FB6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727484954; cv=none; b=sbt0db0LhD2CWt2FwFYq6jC7xSOjRBmUPDmMlzHmW89qvL/LHzY/kqB8MOnMpEILqhy6U4XGV0Zlpa3L/eO3YEYLebapKgwZswnayUIZ3Ouz92OUo6v9ErSJzEFIjzYdEjiyn0pr76EaCMV85ztN8On+s0+3gBTxPyeNighmKJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727484954; c=relaxed/simple;
	bh=RY1Em1svwN2HTwxuGsNFU/hV4e80UJlG71zzNnzMUcc=;
	h=To:Subject:From:Message-Id:Date; b=EHFybSmoZ7SJv0Kld1ZhAGN6UsQygOWDEH4KzLnBiPrkK3g9lPzyXriB7hSrc9aemLUaNQYjfRFLnM8MJWvjgDVYSEAbYtuTqvR0VpUBFg2gu2yXA5bu89XZvMoap6aNwd1qjGO/eylRj4DEo0FSoYnPwY45Jmf6ya0nWOWmaVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfgLpGcP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfgLpGcP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E38C4CEC4
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727484953;
	bh=RY1Em1svwN2HTwxuGsNFU/hV4e80UJlG71zzNnzMUcc=;
	h=To:Subject:From:Date:From;
	b=OfgLpGcPqGq5bOWhpOXpEKyscOV6VM61RKCkmC72BfoRnlFEPpo/7biL2pgV4Cm7T
	 V8507CCF4bIZ3FCzK7+SAbS5eB4UkNADjl0HkS/iKg8xeJvz07zsWcbXUIyTSFqov5
	 FDEkNz2yfK36+G8QXIKHBvf3JW1BEfOEudHvbOZvYaJ8OVrcAXWqmBXLS/JaTUDvF+
	 5V04bLzHSYWeojthi/aEPUJwyaa5j4F9FEp9iBlZOV92cWDO6JfJ3GQXj7NMXZlixe
	 jxgE7dFHJbo8n9HkHEPQogKjI3DZ97siOi/1sP8jXz00i8nKXkDPsg0cF4dLB+Pknl
	 8z4piJpDtJXVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95296CF6494
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172748495358.29675.3107906507227890029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114ed7852acaeba5573d479950329621b98fe306c4b9319bcfe6753b2b85e124
Date: Sat, 28 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727484953
