Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148662EBDDE
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769484234; cv=none; b=tIAKUSivyMMrrzm2WkuwNotwrkw6zJPtuww10PubBf99taY9OxHT5+kU0Ytkvs/ptuE1TY82ZWjrXp4+q/qvVU6H4NZr2ezIqdQzC6FT+179xCnSreBGT7gKbIR+uxEjwjtRp1vVHwDr0S9qiNYp2UpFetRM0zowKQRketOgeRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769484234; c=relaxed/simple;
	bh=hVyj08Gefn2MdPGl8BgWn1l4K7+yOk3RhHH/HU2vw1Q=;
	h=To:Subject:From:Message-Id:Date; b=JcuR2LZMXAWyPzLtf882PtmFH7udhE2vkpM1loSgx7owG1ymvfHBjBpUEynPlah0/pCpUEE5ZfXe0pAv+GAakSd/7wEDTssGS3xq5UCT0OuDUeb05h2VCHJcqQXtJaUF6N44pN0XDK70+CMdqCTxTlzVXDZ9CbDwBj0YZrWW7MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaWAcEXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaWAcEXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F42BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769484233;
	bh=hVyj08Gefn2MdPGl8BgWn1l4K7+yOk3RhHH/HU2vw1Q=;
	h=To:Subject:From:Date:From;
	b=MaWAcEXDzdo+Q2//Tnx4F0EeqymidsYrfEk1aaXNhLna1FomjsFhvy8ox9wlmWBfT
	 oC1SYnAj6vMSn9UywYfVrU2lTxk5IHmKFu4ZohSAaGCqURQGV6r3RKZ+RJ0qL80qSD
	 Ze/VbQk4KVO8S1fjqaPLiMy9EinDYp8jbDepK56KwGwEXU93S60o2g6vGsjBdsNhHV
	 +jG7zEsV7+jRumqzzKaUQ6Zth0nyDBiovzO+jj9FHh0K7cz7kVZyyLMPYUVn4s3Zfm
	 f5l+9+sMhtn/Jyu7WNLlLOJ9+BwoQkVRVIwTtUQvkUCv2Xt+OWncqG/K5fQw+QClNp
	 aKuVPqmgMonCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018BD25929
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176948423358.20597.18177745084777070255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d187c296cf573ce296eb846af606b25230d7fea4f0a3e9f9f53bc816a83722dc
Date: Tue, 27 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769484233
