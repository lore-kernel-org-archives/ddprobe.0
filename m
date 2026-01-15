Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0C381684BE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768446833; cv=none; b=UJhzB7YpmcUDlaM+WXQsu3WeG6mEi3XB2Tn8xE73Gc2K11H7dv+80xCvgKcWFTEJpxK+9+4Dexowg9efkMHruBv8aPo+tZYqQvV9W7jmh/OQQzYX2NjiOo0Aj1lbcJq3ArDHRGDJ5+bosM9/Z5CyAn25rpKJpCXKnimACkIfYCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768446833; c=relaxed/simple;
	bh=mrTyOtlt0dJ5HdZqxtc0UhtvUI1xKQGcz2l3egsHvuE=;
	h=To:Subject:From:Message-Id:Date; b=aDUUH5Ys+gVzEF9U+LMX4l5oYoTdacChOucAyNjblMMYTiSG89HN8VCfSqomulqmp2K30bqBYcHR7dJQBg/OyUcwKGJDNYeEZNuuxQIKdp/Dks7AmdchqWz53ZBiTl/rqoUAzMCIiHmnWqfiy4MCn5mQIaS7SJT+kvZI9Jn9tOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uxa/pBF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uxa/pBF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C514C19423
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768446833;
	bh=mrTyOtlt0dJ5HdZqxtc0UhtvUI1xKQGcz2l3egsHvuE=;
	h=To:Subject:From:Date:From;
	b=uxa/pBF84UMAjk7T5HKgr5MVYYuRWKfWj+UkMJ0uf+sAG5S1b0N6YNBxAiPOMSjSE
	 yGqsTjPEVc+MX2OinX511rn8RaUtTnQAm5z2dbyZet0Kth2UWO0vHPuKmkjB/TBU43
	 XVyXNNsbhVQXmIWwcetlyUzyB3UJRjO8gtiE9YcLlppPX5IHOJx24WhvvJlCJi+KsI
	 XdhnoH/j2nhJPCYGVoUZSXxw2tpoUTxBAaL8cSS92gHf7G55650kKwTC2HrmyVaGVU
	 eUv7lieC4L5r9oxWRZ5GtoHzGAIhGxTXDXiYJTIGnkMfhLSI0NxqbdwjUli0MBpUtE
	 Mi4NiStihjnzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC8FD3CCA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176844683357.13390.13006673895951313915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fec7ab606c96a6b81147e86bfdf964e87b179bf1aafe91d52012d9887603622
Date: Thu, 15 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768446833
