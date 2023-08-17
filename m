Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4433312B8E
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4325C433CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692271988;
	bh=YB6Uc7JbnbfhFQMbJzXO/tATbSo7+AnieJ0aGS+ZsLM=;
	h=To:Subject:From:Date:From;
	b=Xtkdyk2NyXn3rDnIeVw0JNcgi6Y5t56MzTc7yvkwC24TPT36jDat/cJfQ/a7Iql0t
	 ercO6xylGQp9Gro9bsATWgz+Ed9OFg/S3dCixLOtQWMVIOXmaHSVxx2Ino9bvbN/NJ
	 tWSbJVzHy7f2liKjpkBOg0q/lAzEYHHl9b/ofKcf+rdy+r1ooutqGV0dX+HqVpjX2Y
	 rJ3wPBVgMHLKwJ2dzdgvadvu+YrNLQFp7ch6BeEfnkAESnhm17zeNp6JD9PkMRFXrB
	 T0UarzFPTkS4zA7APbwYOuWoGoZhsoZ8ZmdMxHcvjxauF/WjQht2Hexqqn6KzsKifX
	 CTNuH0IMQr55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C5EEB64DD
	for <ddprobe@lists.linux.dev>; Thu, 17 Aug 2023 11:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169227198868.31158.5095566628879161352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bae914a6d734fd517ecc771fc9d7a5595a66a5d478844bb3b09644944d64c6d5
Date: Thu, 17 Aug 2023 11:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692271988
