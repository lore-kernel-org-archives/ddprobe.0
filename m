Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5393942A9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752259795; cv=none; b=NDGvpTB5F1mqhEBdz/AY9vB2l9EMOzuHYOWMdvt/iY5FbNlGjLxKmLTojjg3t3qZdiYKZrnutjtYqmVHefRlsDl5vVuxgdloox9Pafvx+mfkXel4ovGH4pvbcrd6P1ohn8txqaQ0zrAAmCnS7tUFaOhoN+XoNBPPC6r+WuHV8eQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752259795; c=relaxed/simple;
	bh=J/WuaoN5AGJgznUlWGr4BrQyVV9NkSqVMDy9nTgBl3Y=;
	h=To:Subject:From:Message-Id:Date; b=lVR+P0ds9IcF00D65TION+aI59atU4mfzGf3CO6cTw2Y+spU2UPGjPmk6Xh2k1oyo0ifUgALvsER0epiwvRPhQlPyGv/GeeuV5wjUf8L80GIEOMUYXwoM3UvA/9UMTS6O4d3QZJODd6FA5acRrGk3kl52hvEO+jXsTtn7I2Iaiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bR4PaXOc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bR4PaXOc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC06BC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752259793;
	bh=J/WuaoN5AGJgznUlWGr4BrQyVV9NkSqVMDy9nTgBl3Y=;
	h=To:Subject:From:Date:From;
	b=bR4PaXOcfQvgDEGGmtvGUdRY2FwylRjovJJTKZOeKjyHW7hDHIh06oMzkHU/GYBfe
	 lZrzzt6WB69DVgxqzouaFTgaaXqnHZLbrzmoV3nTQSkn01AS6VAmMaQq6AvQwNsVDt
	 hZrmM8Wr+YkT+GHq1lWycTsoIVczW905N36Q7v+nfumz5jiF0AdQryl86tVf3RpxQL
	 riOWsByeHW0dgVVfNRYgO/4DitcTSTMxASkKGNPQEHUrdV0kSfS3RfFtge+DWm5Jp7
	 lzHph5p+yQuEmCBW3NyxaaGq2AoPWq5ofdJ1OiMmbbP8v6SMw7hrZ5FybVLJWPjjO5
	 3fv12VzYDJYOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E7AC83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225979359.27863.8872556439479613676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa1478166635ec6cc7cb3142284940c9bb5fc80be64bb1b907c2bebe4980d1c0
Date: Fri, 11 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752259793
