Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0CCA15AD
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FD3CC433C1
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663908053;
	bh=/yBPVsmRZyOd3bzuBgGMhGlFqNv02QhBVg7ENJ0TLWI=;
	h=To:Subject:From:Date:From;
	b=GpZMkh80kQ5LvgKyDpQ94ubSrEBJQ4ucY1QRmvp6IbXUZ5vg6e1NvU87VglAig9uO
	 lTu/qHZ6igGwZEuyMFdZZrPXHsz5kqxB8TAszqwcQk74laZx0oDYRoEmDGcY+KGmzE
	 HKyIyY3Doda7my9xWCcVz7G1wvDd00QEFIRORrat9ihJhcnGo6dRwX+VcXP5f6UrWb
	 DgYHWcTi1lI6eIP26w3z/uk2cLrzVZSN1YbAHuam4o/cbWbcGufkAO+yM9aIUF5LiR
	 3fwzOpkriIiDd9VInbe/4NvBZBT59sWjJEZVAUWcjPwK05edGG9h7+K99N8OjBlcXg
	 vS7bTH7XQwN0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53F3FC6FA82
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 04:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166390805333.11483.8235948300161465630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 408677e49d8e8de3f6afa0c90c49a8566cb2833f642ecca87ee2fb0e4dcfe6df
Date: Fri, 23 Sep 2022 04:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663908053
