Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60938C2DB
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:41:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9178C433C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:41:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689633668;
	bh=B7QicpjxTrb+nywHh/hMRwXZL/2Cvfe0b7KN7TkEttE=;
	h=To:Subject:From:Date:From;
	b=FOnshXJhNAH7wZo9vpoqugb0XlBJBsCv2ULJo8/HQ4EooxnKHDqRO60c6q+tVbRev
	 KiFgkhv9Zj8uR1v74WGuPNjTdT0gh7UByDMAsc4x/WKbBy4rCnBk5lC5Srnk1lxH7H
	 UwrG7LGpGUBg0gIj3ZDSntQDwbuEaUFTMr0oNGQt5SQrVwoPIGVKVwRVYV9TxXqPYy
	 UKF7ghhdStbCUX/V5oZA5BfnzXYEdmhenaPags2IQRn99oWnvVqkIDfoyd9MCRcXjX
	 8wTC0UR/Dx4juInTZbL37hFBBO4COpjBwmJVDasIqzP9t4SwEF4SkwY8uLnlyWXvys
	 wjwtqSVZKQUbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA21DEB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 22:41:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168963366875.7009.294388127731770756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b08f1fb645ccf9387fdb5e4ae5043413dc6986eb82bc5048a2337ace4e88e35
Date: Mon, 17 Jul 2023 22:41:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689633668
