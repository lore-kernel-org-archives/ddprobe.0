Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695DFA29
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED9FDC433EF
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686192786;
	bh=GhAWElWB3fDq9WSf+/HrtNa+2MyJ90ynTCylZpo4rxk=;
	h=To:Subject:From:Date:From;
	b=lfv6VBweeo/AcfQuDhF5Bp4xpovZOsrls2jkyT5SgZ/q/G2VFZxBr1VNQ1owbDi11
	 aWCUPVzuK1Jp9phHV/QYLUc4Dl/80O+u/pwqQn7bGLS7Vw3P4Uq6L5UrcN7A5B86tV
	 IKGw4ZgjE/B7S957X+Q/oSkBR8Jem6RlhAGturfSTU9k8KCUVC4D5b5403MMcrpZF2
	 Pq8bGd+wENDFcW3FI8sX+1ogAd/9sbkYi3Z7A2/D/eLZampmNxlK4vh5FtNLzIb2wB
	 S82Ohl+WEO8SPAl+L4Al4XTbB1Lwr6H6MTl/I60JbfsBHGe1xyt0rnkc5qkXog4Sz6
	 Jjh3C9yiGGImg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B1AC7EE23
	for <ddprobe@lists.linux.dev>; Thu,  8 Jun 2023 02:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168619278583.17248.496177712014745691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e316d9e9f54a580ab6ef476fe71cf4258f3adca8965bf916d8443951a0e0bf
Date: Thu, 08 Jun 2023 02:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686192785
