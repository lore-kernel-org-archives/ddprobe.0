Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2985923C1
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 10:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vC0h4yT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAC5C433C7
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 10:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698488296;
	bh=FSkHjjEF1153LK1RuvmmLXbFwgqlSKX8hmFpC/my/xg=;
	h=To:Subject:From:Date:From;
	b=vC0h4yT2xJUjrlypYBhqgbQ+9sdkApj6cx0n6Dvc4eWlMnadPeaqvG5zXFbOn5RQ2
	 /vRKL74fTS+jSF2tT78RS+aSTUqt4g8lx+r6pFSGaOP1AunjQTml+qkhR1fzmJNJ6x
	 OozjGZwgfchz3/76LXlUVXbnEh9N4JBaiexVhEzGerQEDptIb/EO97lZKV23NVsRyE
	 avfksjVQe79wAorD1+2JZP5Yw/GiK9Q0yoY22FwC7B5W6574EeNH2tue2G38qyLFMC
	 A/pvEQLovtCqum5U5sMb7lU9hB1y2rrXsuUXh0RZFfScAtyW2vt6XNmMnzQZHhEUJ7
	 2BDx9PKY5lOyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80277C0032E
	for <ddprobe@lists.linux.dev>; Sat, 28 Oct 2023 10:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169848829646.7106.14705772622410757455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7150578bab151d91f1d94a0f29513831cdaffb547e33982a5e9057b2ae039183
Date: Sat, 28 Oct 2023 10:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698488296
