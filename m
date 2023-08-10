Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5492D3FC2
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 07:23:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5976C433C7
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 07:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691652188;
	bh=f3qH0vqi4x7ZG0LeWtgx3LO5gmQJEhrJrKDkyf+qNJ4=;
	h=To:Subject:From:Date:From;
	b=Z6NnEIyriLeJ0FLYEj2pu1q8u8ipVjfHSDuPAYBDRIW3UmrAIIUdPTC+g7cwLYl45
	 bvXFRFWDgXFzqi7NzDOTsSXPTDvBoxs+DZ5uCVWBYSp2KK8omQEw3SZWu1ERsidZjW
	 4Cr+wG+pAXhG6ck1qGZ7AZNCeXdf5qZQrn9hbkO9I2Cp68ji5Zg9RJGqbsfk6jICw6
	 ztkDoUL4B+kKb0WIg06N16AxuUy/6EkhrgHHj9N20LfM2DVrFayJAqrnK2CWkXt5xx
	 DS910tZIxZtC+nWJetQnRQI8h9wXY73tcvYZudA3AHAQ5+nIQ1jN/jj1G7RSJnLtzh
	 Wc33guD5x+IMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACE5C04A94
	for <ddprobe@lists.linux.dev>; Thu, 10 Aug 2023 07:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169165218869.20555.14340289567998052678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41cb8d3d1f46a2c3a939133d2e93da7ca2cf005f16f11d5115a5a2a478808fd
Date: Thu, 10 Aug 2023 07:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691652188
