Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDFB7290A
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 924B5C433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661612452;
	bh=UFda93nV6FQOAACzXjPoKrnHo3oVHBoCjjMavjrQQwc=;
	h=To:Subject:From:Date:From;
	b=KaT5n+DfY7UfmTB4MMa0Ome0Tja1WQdqtg7qgTIAckgfpRdOesmJ/z8Q7Gn64Gbhz
	 F5gyaPqJZnb4GL1pjGEw9lyY6UePaYoZuljNGdas4a312c3RKfG+PGNwCdCy6HrVXC
	 sxVZSVq/ENzIuVSM00dOxxd05/1HSuhUEOorLjLiHr165LJ9W2XdRzPurqgBW/SXt6
	 JjYLfYo7tzHDEN5ZSxCMVos0Tlk0tGQ5ZbFZiwtXGWAPwTbSfnH+MlbZzGDGyjTcTf
	 v+RVCiZJSpXGCf6YPn9HoJ/r3djR/SdAl8JJj/Yvro6rZUiQ7DBrrkHuvD24x7pyoZ
	 FyRq+WOKN+k0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 700C7ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 15:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166161245243.27559.11337391894435409723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab426cb8997cc7d475f5363b5b033d339c24fd2323aee156103a276301936b82
Date: Sat, 27 Aug 2022 15:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661612452
