Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235E242909
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky4O/3dI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF5DC433C8
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697753296;
	bh=ib5bK1V2x5n4PIIIyDtsuW5UxvWGQbBR9GFbmsQ8N5k=;
	h=To:Subject:From:Date:From;
	b=Ky4O/3dIKxj9o6eO1IWRuu5PMRJyZbAkLRT5Fou6K7agY6ArPtq7ARfHw+6uAb7fy
	 DxOF1EijUPIpOxJJ0SZwVCH+FbeNPBmv3oI+1l0ypgJggBrgYtAUYH+P/mI5kSq5G7
	 LfF5W1VbUrcyqMhQCtDQDO7qJEBTrEjPq4n9p6YCRnsQzEo7gOAV5csx+EjcQOshsf
	 x2iVSbwayuRt+z3zGdItxYpI/l863W0Tv6IvXOft0f/XA+4LTSaqVgb24A88uzFVXO
	 /CyKDbiXSNUZOoLhSNlr9OshLCeFAhQv9l7A7okjIC1VAE3mkHxAZdTQ55/JAki9r3
	 uLxrH2YKP9vLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66601C001DF
	for <ddprobe@lists.linux.dev>; Thu, 19 Oct 2023 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169775329639.7698.8984501591895656189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4be2d92f8c64d47011d6719b2bf52b6dcc35d7b532287bb9c7bd7e0f8772d08b
Date: Thu, 19 Oct 2023 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697753296
