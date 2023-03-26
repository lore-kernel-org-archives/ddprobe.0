Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3752C33E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 15:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E82C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 15:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679842925;
	bh=2/DCCTjZwpHVPCDlj53rgMZ+rIs3tOyA1kYZ3Hu5qeA=;
	h=To:Subject:From:Date:From;
	b=J22DVkFLgS6lxNmjZj66y+WIhF0oQ+8X6bX3sQ8/+YY6npS5YgfWbjQQaJZToTlj6
	 YUsWMJr3R3HrseQsuzb0OxE9kzKznMSw1T70qz2pQdxO5kz1WLuh5A5Z0n/2gQ8MDX
	 J6eCfreh/kzFKc22NASwNQf1Ah5dQxXxn5qx1jii5nMogwdkPWLWCk5n/Qq4ysrPzk
	 Yv3G0SwpMIWkhdQt3t89mrjkWZfhEQG5T5rOKD+gjrPCys8OS74WUrXgX0J6JdMXme
	 ckvZQQvHFf+bgxafhKSVx24dnOUz0clxd6AMFlxvkMqvJqsHQ6N2sKFou/hUEjxUPe
	 FvnHgExQ4IfgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB968C74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 15:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167984292574.3878.13810133158891310203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237d2d0015bda08f208818ccb83f48513d8aa9f639c9470b4100a6ea67638d31
Date: Sun, 26 Mar 2023 15:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679842925
