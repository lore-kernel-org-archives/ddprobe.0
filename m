Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9C265B
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 12:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E61EBC433EF
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 12:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683808445;
	bh=mClwr4uD71F6b1sYxUcUPpnTfKWqQDObRNjxGWwHfx0=;
	h=To:Subject:From:Date:From;
	b=YnG1fsK0N8Ngzk5WYKmazH97ThZrfLdQweMCRrZZI2Nq5WXIwKFFXWmXRIB2Kdber
	 0O6zjqvjf7RA6d4O5RvIHta8iwHrKJi/xrMPlnn+yRvW1wUAVqluFmPb9jrZDjIzSz
	 htqy9ERFGGfOdQeA80st1m2kYejtx3ucgkY0MYV4OuLe9M8qjLP2W6l/75D3cBE2Bi
	 JXWLdHvneAQQqitjbNgP6G15HCNjvbxamFMOtqI6g65ajbU0ItoN9/u8SLUt741/Ac
	 fektC4RZN7AH5o04upW6MvQ8/GWk0y7D3uk1HR97FtjuvHkvfF8DmAxWawkne3OkI5
	 z0Fit7Gs/goOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4DF5C77B7C
	for <ddprobe@lists.linux.dev>; Thu, 11 May 2023 12:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168380844579.25635.15935636784415195343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c838a15af6c73178ad14c5d0344012f458f5d78b399f08fc6065ec80a237d21
Date: Thu, 11 May 2023 12:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683808445
