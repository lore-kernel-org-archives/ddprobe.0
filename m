Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BE6F23C8BA
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738944354; cv=none; b=JoGd0K0ZwXlAkhPCTCG2Ajw0nnG3YJVI9QsT0C5CoB28yvCrnCl53M9h7ds5KdhmOtdoIvNwUcA9ikex5uCA5i+sbuin/ejNyDHjLpbl3DhV+it7SP0jFrD8c6fR9fyTFEjNUpj+NAOh0w/UTIh1y6QNCsaH8LbDLELmj1x4h58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738944354; c=relaxed/simple;
	bh=1uB1kRqVHNVDYZyVrGLopPWHp2JOImq+wXqyX0Onvyg=;
	h=To:Subject:From:Message-Id:Date; b=KjBXxvGRW9YrDW2ao/4N/VkdzRFa/JRStg+KWqtvAHiEgUtYsa8RYLfFjaMm2wvGWc4xgqal9GIYTPZLizBq5ZmRbYJH4clSyYLxVFkDQ+xIR7RGL9rREdjf104MbN06oF7ctl8EUB+WYntbrY5k/ETH1t72x/leOX0/E+SdyKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dI9dC+5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dI9dC+5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB12AC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738944353;
	bh=1uB1kRqVHNVDYZyVrGLopPWHp2JOImq+wXqyX0Onvyg=;
	h=To:Subject:From:Date:From;
	b=dI9dC+5jo7QdMxaR/r5089T2lO+BSw9wOQyFA8/vXYbxXxtkWqnRTXMeuexoVug2A
	 xr0JbT0eIwvQBq6tbRcimstcqhziHjyB9uXTuTdwOfvfl1jgf6ZZR9SSnleUpenQ/D
	 vBEN5pSKRKoWmcPPJncjy6tc6zuCr2HNZFWdEX5uk9xXz4liKpV/6meUvjIjMeT6qc
	 PpziVD5C/CPonR0LWxndDuhau3l/ZeUKdcPkfp4rrXhP8qcpGoqKSgW6RpKIZrq4GB
	 CdcnxY5wm8HHlF0gy762lbSCniwAEGeJrhB8KafcjxELi28sXcjJt3ONhLG+qgCutt
	 0ZyD0EpeZq5WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A37C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173894435360.14083.15123725059068831092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cf66da100cd44e928204c0a7b2d062c48690e7e1efab4fc605188f043cdf9c2
Date: Fri, 07 Feb 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738944353
