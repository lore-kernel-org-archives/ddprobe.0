Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A108F9E8
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717989443; cv=none; b=Wy4wVKG2Q+SPNxr2A2/4/hJFSQ2TZkh/bemkQs2nN71MOxhOf1DWkxysp9YGHEgpdIXVxuieRnJuKmypTnMQV1y1TXuisBWvxLMa/WzlZIzrYR3AR+WZwWBcIKgidusyKVCljHukjRdKTWBZT0NUfFzimxpMYd3GK+8YDQ557xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717989443; c=relaxed/simple;
	bh=0oR1rXlHewAp3fkSE0gnQ3fVTofmu6zT2AGnEyFjKek=;
	h=To:Subject:From:Message-Id:Date; b=r49Bl94l7/ypO9LFW1fiWqobfoRDzqE2O+33cM+qgrJ3jJv39RyfNIKuA8Cp0aW919EYQWMXN01Y7OM6cqV05uKWTIXZWLlh1yfmKFOL9lgsUNW/BgiI8DGfO6LnFyQj9Rfkq+oM5WBWnHHuUVRplnYtyjfu//EP5yWhYFGWZ6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfbQmb+C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfbQmb+C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF52C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717989442;
	bh=0oR1rXlHewAp3fkSE0gnQ3fVTofmu6zT2AGnEyFjKek=;
	h=To:Subject:From:Date:From;
	b=qfbQmb+CSWonlhiB+aK7ftqfZZq/d2R6377ySS8HgVpWgWXVC3ZU5gbrnNvFjALUf
	 ZuUnwEly03IUP7/0vuGc2UJEeTOxeeyJwFBMwHTdvcWHE+KYlHifLO4zMg96BprzSD
	 b7OZU3VB46zzvQ1jxIcHRSYh7x9XhjauLw8KuaKvIwvy4Jl+fLFe/5wRJqXYMkwmcU
	 Jm66D6u2q8+P0T6mQ0KO5HU8Xc69yqSuuB+M5/kgZ3PU4pkpNTulLtCm2EBqXk2FVY
	 JRR7Yo43ccxBGaDO0nAqcDN28EuxP34KxossrWDVZQxO1N0tInpgpsGLG3Q3x6Dp/N
	 ENyxqHWQ8WoaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB15BC27C5F
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 03:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171798944275.6043.18141572014105372366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668439be81e8c01c3996914911483f996ef1376b9d03663225554e18da024fee
Date: Mon, 10 Jun 2024 03:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717989442
