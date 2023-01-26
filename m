Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428801105
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9240C433D2
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674693785;
	bh=KBWrkpcWJQw8Txzj24j0Ebgy53vnnsu1CoqkDze6FUM=;
	h=To:Subject:From:Date:From;
	b=RNRfQ0IAHLIi/IbXXTw6Dj8xoQMdjL6JYSaBjiGDzg+fDWvIlG6H6KJIwRb4GIlWz
	 tb4Ykpl7PW3Hl8yPme20fIeoYVKSG+C7yeufsz5vQQfkqjO9PEqZu7BxX7Q89PEmeQ
	 aohMLfKOODDwxesq0cJ2Bg5tdxNBhgorWKL0qbxntl6FQDgX6BYkTXx5dqMQo6g/lM
	 cG8Duc73IjLL1jeWWZEyjIoWtvTh+FcGnBavKHLBiGWNlWkIp6J4U72C44kCuT1ehD
	 GBhPnaBvAB3a3XhSzMqkqFCaVLra1gWGsL8KQqhYRXOlJO3nbS6PKBvyj0Wq7fgMlX
	 HXT/3ITLbPp2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7CE0C27C76
	for <ddprobe@lists.linux.dev>; Thu, 26 Jan 2023 00:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167469378572.15167.16711727301314623879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 423f056d95133502b095eb4242ea0df1d1f127c5842eb613f9e8659db913bea2
Date: Thu, 26 Jan 2023 00:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674693785
