Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406E5D2FB
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 23:20:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0F28C4339B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 23:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679613605;
	bh=W0cIKPHRS5b52h5jLjRji9wD9S0S+DPI/Fmm+j+SnxE=;
	h=To:Subject:From:Date:From;
	b=dbZqlhO4vHeuzIKwhZ8r3OzHA7dPGClDMLwuKtlSjuAMpfF5nIzF/hf9E0vXgrL9h
	 5tA+PGnKia2qZeqcY6WPc+IU8lDtSF+eXDH8hH/m4jFM2sroaZxq8HCpJbAXvk0LMk
	 NvlIh+m+iKwRNQzRp11F5epRCb7cd/IrNOf+TD4QYr6VHBuHPrirEmU2Pfe04sx83i
	 EatXRefET+ozf+sAjlFXhgzNyLrht2uDDdRQWj1uF9HMZYzOSthPqsfw/2Mb48M2P+
	 sqvi2A4Bi6iGea4mbVmio4v9zpCkRk3kyjGtZJ17281llAKAVr0yLdYuQzrRPisD9d
	 WC0RibFbucgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC2DC74A5B
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 23:20:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167961360576.18110.8979131915270289251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 275444a59856097b9bc58b2794794462fcac46accb8997cfd5d25f7dbe1a3ee1
Date: Thu, 23 Mar 2023 23:20:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679613605
