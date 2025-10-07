Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332F9212560
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759815594; cv=none; b=WDJi1RJOIWlSayiIahJffJ+l7uS7L6cVIvbFivCQBH31SjDLWUeepMmvTMa9uzgiyxqUzkX4B/ZnH3KvEQ3PYL/rWpuow65CBBEAfIt78C4TKmtPyKlug0bZ9hhQZBaAR+DjETc2aUhaVEkAMu+6Ex049XAMSvQytYRhd9eStII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759815594; c=relaxed/simple;
	bh=uMkf+Ro0ioY46gWNcVGvRSgpjfau6eFUzasruNH9d/Y=;
	h=To:Subject:From:Message-Id:Date; b=R0DcQ/Ipv7JL6YcZBGKsKbu75EdUWWJGh+lJeFtWVZIGYrTnXmoXgtM4cpiAcq45YmQPQbAZvPEX5PTKAPnJeiiJGxNuYYgetqwJw/XrHh3/3h9An/Dulqkw9eL8TwgCTUkfj+zqcfUZKPd/vbRgpbuoxUK2o3SnrDaz2GKf1Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6OT6Rs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6OT6Rs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A192EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759815593;
	bh=uMkf+Ro0ioY46gWNcVGvRSgpjfau6eFUzasruNH9d/Y=;
	h=To:Subject:From:Date:From;
	b=Y6OT6Rs0Ek1xh/bYRALkZItDA3Ig3ACFhWTsmYNBipEGrKeh7mIcoRyOaaSWh5C+7
	 m0mddnHlauC2FxTivspXKG9A5cV6ZRyTvbnf5+rvfxXWcuzi2vzSJLdNprFxMx7Fo3
	 jtUGiCLxzK/lBThFpPMwQlNz2y7UFgl8lkhntwSUyqrYVS3lwzwu84Bp0aJ94r7i3o
	 DMbQXjHZSoc3vIKKmpQxqITwJ42w5O0HhNBsMei0FBaqMMJQcwYBZTB2TlOpBdvOuG
	 t/rmmgqQewy6lBMiGYSw+y6i90Ivp9+hccGYB3iSi/KD8S4V0Ad8ENh8gVpN/Ae4OT
	 qxrL7HA4/Mf7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20FCCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981559357.853.7457109013184967616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282fa5af6f289cadb47e0b0fc17c8fa97c7612c904b32010184b7096c4082616
Date: Tue, 07 Oct 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759815593
