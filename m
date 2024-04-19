Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FBA7D416
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713562823; cv=none; b=rX4ya2VcOSFQF22q2h0pbhZ6CPCASsxjhF8mVJMD6CgTtT3Lx703p2DacpX785BUdWsltdNV6iSFNfqTTXXMWD06MdoiNKXwAvJk4Ktb3nNq49S7RLN+dQxjqxPdMDJY8QKg+SlkGy35V+TOpOE/yaDKxEjhDLazv3ScocFT2Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713562823; c=relaxed/simple;
	bh=U/gDiIY1iRn4AazE0bBMw/+xN/jwDDwN/pyDXDx6N+k=;
	h=To:Subject:From:Message-Id:Date; b=XWdMYtg8STBJQMSY3P73EthoD53euGqFhWOv8LxLd1ocyroD3qLswxEoXnZwby+vEBoQLx1Iks4qqMhezgxHKVKm4GWNCn/XSUVhAzddrGhAqlCJ+VyNtpEDDmarA77q+Y9OKQxLox/mbctmOwgxeBxiUqYb/8ESd/qyQS0M0hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJmUctcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJmUctcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D610FC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713562822;
	bh=U/gDiIY1iRn4AazE0bBMw/+xN/jwDDwN/pyDXDx6N+k=;
	h=To:Subject:From:Date:From;
	b=PJmUctcqG3xckoAcvBec4IDP5u7q7ZCSNsTUnho6IaGiDUvdEfLZ79r7KI0aLtXJw
	 c2QTpS6KXCniaxA4P0fW2EYAtwFCtWAKTTJxsyMAFVOWf75AKGqWqurXx5Qg0+sY0n
	 gdd/ioM5lmR2JCVOZd0+MkwTIofKH1KaJJO6TogTrCc6rTY/i1BF4c8jrt1RwdFvMs
	 kV6C49RWTPSyNIq6U0pzQRTQoTFpg0/xVrti0LDiAHs/O2mBVzMeZqQqeXV9n4G99l
	 GDvOYRfsAKw1ksrgyWB6z8zl/MExHQ934TBi5vfftdNe4FrZ6k/tNIwrt6up17Jcdq
	 dYwR9MbIJykCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2FC5C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356282276.4323.6414894600880869952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8541a7f3568aa8666cd5a97961b7346b121adc884108931560f27d541ab357e5
Date: Fri, 19 Apr 2024 21:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713562822
