Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C913FD530
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749165593; cv=none; b=JhMrFxSLYs68CJ6S6Z45n4/OWEeRMk15UXrNHJnJmlmZrwUOUMOSVIsQN7NbrngtZwUxaDdhEo2bFXuXg/rTYfpXlenpUb8Z+udhErnq+Z+Zp6Pz8rcpbuXbI/zRFinmNHUJ9JdCuBvayOGMJZTNwaWwp3un6XWi/lpSZxz8X2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749165593; c=relaxed/simple;
	bh=zLo4rjLjWxnmpCzoWhSZw8PGoWTe+OEJIt22tMNmSus=;
	h=To:Subject:From:Message-Id:Date; b=ds5T5QlD8X79M5LKIcH6t1LjF9J5B83WHcOGDoVVyOxgIZ9fnunHLKPNSF8ouieLwhy/R4cn8mTBEflahTkhY/blilpZKGz0qEX1i+eK7SPHENWgfIowA1tFlxBe4vajjydfHfY3sChP1BKD3kiNRx4XDhPRtdT/Z5gxMif146Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4jbdYJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P4jbdYJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDE8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749165593;
	bh=zLo4rjLjWxnmpCzoWhSZw8PGoWTe+OEJIt22tMNmSus=;
	h=To:Subject:From:Date:From;
	b=P4jbdYJBvgzgoaT+stV2XMn9RSZDLcj29GSgwYvq5IlNd5hZnzKgI/wlm7+tK4Dzm
	 qZCcN1VNnv9CQNgpE9xCnmxP2P2teyv4fNMOfA8cqunN7gN4Fcjqy5THo2PSgCW12B
	 gqKcCg8daHw9aFn4ixVdm1Q4H7OuDIR4mV9UlHGes2S24NkTiJRF+QyHSNYb4hUaR8
	 0jMtR1PW8vvS7yDmOMd4IQ2+TApJzRTeBF+tS0sHcE0s+FbXLwvI2IOBZWRtHy4tYA
	 bOi2RoRKOVrpoYUgi0ENEvj9lsmtgXf4FV0W8q9pp1YxsFIDOEjecy8u6GYDxcC36/
	 QfArdJFZJWn8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F824C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916559357.29465.8729494132547899716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac586116f112432b1080ddb6d42757c89f702bda46c748dddbb93a0ad010fafe
Date: Thu, 05 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749165593
