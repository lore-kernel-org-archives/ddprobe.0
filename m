Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A88C46BA
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 13:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3B8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 13:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693229648;
	bh=m33d+lRtz21QLPLG4Ds9nwie45yMmuW7ujPjg0cP0j0=;
	h=To:Subject:From:Date:From;
	b=Bf6RATNpkaoDF9VSxzStT8oU4RE2Inx/EYAwIVk4wCTy/HQNH9CHMe/91cKxfsQ3F
	 LeRH3wItqT9nOmW4cPtO5dnGQyRLQYvHrJ/i9hQiTkrtV7IR2ROPngxT++3r38mgUp
	 IyL6e2FG+e6VPjzE4l6YkK0udVzaydbQpIpmBS8MXwgvp6Fv/oltf40SaTlbK4VwIj
	 zNDnfssuD/QyACIGt3KGSeS+bL5rnGb7CI+JkRDseZFf/YgQCD9sXnYZRBoySjIVwj
	 TEANigkb028hOeeii/o19TKU2Ov0YYjxWQj6ZD/Ua4Ty7jjtigrWfvdrz/Mb1s2Cih
	 AXl8lrYliuLgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECECC83F12
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 13:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169322964876.5000.391675439091373463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbad931117f56f12aae09c1b7bade6582651f1bd13d3f38d62a6392dac08eb9e
Date: Mon, 28 Aug 2023 13:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693229648
