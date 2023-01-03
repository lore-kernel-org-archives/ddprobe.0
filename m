Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AFF79C5
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80FE3C433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672754487;
	bh=VGtbbnKhNIXkgypI6zi63/oGoIWTeLZFat3DZk52+iQ=;
	h=To:Subject:From:Date:From;
	b=OuH21Z1k7eMzx6OObWgous79+Rr+kWlRs2gDO6DCiLh/21xM5bbJQeOtUCyoJG+Gk
	 sYe36A95fTv0ZfYy6/ASyDuyCLudMMqZZzXrfPSYvMqcRRQET9nxwFbHZUOGVvjwhQ
	 z+lPfuH4c5JO/XefLf5DuuhkYd/0ZNw31j/+ljnzFd30KUB2u3h6HEzfzI2EptHU1y
	 KoPVQK8xkuedetSOjiiXGsi0W9y9wAGetWgXfChFnXlgDB07BzpmMdWPma6IqEO2wc
	 Lvmtq04+Y3lNM0KZ66BFHQtA8uXD47dpRof5vejjJeL2LkhBFA0ocWWr7fQzu2GLnS
	 moGtXKMNvMrhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B46C46467
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 14:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167275448740.20419.5313056528091896888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99f2841857d8458422b10661acb4136b140d4a5913bc5d9f1fdcdb63792a3a7a
Date: Tue, 03 Jan 2023 14:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672754487
