Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5C33C0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7B80C433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674896585;
	bh=XjBp9eM/ncGkEu4Xb4KJHXIRkI8bMvZcrSliszZgDnA=;
	h=To:Subject:From:Date:From;
	b=d5/3tnDLRm/m9eZgWS4CmvIe90XPUFwGRG2kUVBZCGMUWJszk5Gg34D/UGGikftxU
	 mOELiXlWTrQe1rzF4HqQdwDZuLdbR1a5hgl7eiBzFO5BVz2D5WbhzkgdZYZw0GwWYJ
	 eeW3+vy0+wPPJS7H5RTLuWrpjoKF0HvlHk1HtBu7g40U1GW+epQ8tdvBY8X1jQ7f58
	 LtFxwEf+Lv0tBhBJiaGOO1sn4JnA81QOMKVXWhHe6BYf9ExlAWo0vJoHUh+61gW7aR
	 mtvZlJvNbPzyAO9vjny+KN1qq80m27JZgwRINhGzywaky8AlovYDdZx0hZgM4WtbdK
	 FdzhgvSH/Snpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24D7C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 09:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167489658578.11629.14628970238067307068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44acabbc2c4e650140bd148aa262259da01f34df2ddb6413483965732bd02f42
Date: Sat, 28 Jan 2023 09:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674896585
