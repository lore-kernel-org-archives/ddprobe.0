Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AF2374
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 05:06:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D85D9C433C8
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 05:06:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688360768;
	bh=iPpX7voiyuMoDkWYmg0RZzOdh+eQMJ5Vfb69N7tE5YQ=;
	h=To:Subject:From:Date:From;
	b=riBPtxLXTCGPfISnob4q35zMcHhkbR2b2xURKZ5QDjJcHT5XYzpTj6cpP3bQ9mNcA
	 /jRgBe+Sbay0QQN7yR/CyUwYtvBT5mJ9UfP6lGmXE85Wtr15p4tcM453bfKL9NBS+F
	 nFiaVHq+cz3szGVNcP8HQrqcJeZbdnsWWk/mS1wvWzN/v9vNPfgpXNpGWQGuGJnBPh
	 G2GsmX/VKhXHARKpHjj7RwrDXcD/r9z8c+dddytFCK+1z0p6NGzkfWwpjNTFpnjLxn
	 Rbs2uz1pwgEy7Hrk5OSYHU/vufK9tUuAU+aJs4yF6PHDlGxJu6W0aVHXsKPUoNueYJ
	 b2xthubONqrkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4DADEB64DC
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 05:06:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168836076871.695.13447464466461246222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe73bbe26809751a726bf74542b63271edd97a5a3e4a112b79dcde7a782cd5f5
Date: Mon, 03 Jul 2023 05:06:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688360768
