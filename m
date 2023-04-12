Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDEF362
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB355C433D2
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681269126;
	bh=xQNWXTsXlP1iwXat6oBHjZBV5Exji/o/qg3hkxHD0fM=;
	h=To:Subject:From:Date:From;
	b=MzCm9wejyiGOXsXy4zUdjzrDWwPXX19aTP5excKbhYSbnWfMfbBhY93BC+KsRJ+wN
	 w69bu7yJyxbYjAgGqzD/lYcKvZpr+DI0TVRKgwth5uqqFsRunG0eYtzWKI5Z+x97c6
	 dg+Sl8HKwsaNcCHOPaq1bqhDMUnVaSqV6v8Fr93SduIfqYpAB+0ksf5/cjJ7yQKk4x
	 BCR3onKvzBbdN4daX9vnJRkNurgm7Vs6Y6SB6oDrp2rba7vBBXx5M79icpF6idAQhj
	 1rXUyy669uF+977jZPDLr5ix/tuxN+rvmXyz93D67yxJ3uNi/YYGR0vQWkrOL/gEMK
	 O+dbkizpG4c5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4F26C7619A
	for <ddprobe@lists.linux.dev>; Wed, 12 Apr 2023 03:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168126912579.31075.10286036770045618561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7aa0cf0b4d9d5660e448b567b79448262f9263502f6c0f033f7a9a3d319fdb5
Date: Wed, 12 Apr 2023 03:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681269125
