Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366C07B
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E38E9C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681663025;
	bh=XSc1N8BcIurR4NzKZ2wDe4T3y2D7VvwRm+bYg3w15CU=;
	h=To:Subject:From:Date:From;
	b=YXocozKFAaPCiBOqLQedyl4qcFajV8Ssq5uv1Icg7dFXvcRlYHXpXNAyPDYLfaryb
	 r3HT6w+2bjLgYSlJ8Mo4/BbACq/TAjDtKmgToImpMKjireNESSHwYZiCWHN4wytRaM
	 vjM2rjsRwL7kyEnSk+onNc7CqpdJlANf3JUITt/1c4BjWZ71mnM7Gif99TKWvCP2Aw
	 V1+a892/vZ302U92tQqQD37kwrt/PyUky2uFqzhx4YYaZUdg90D7kL6HSlYXxDrBl3
	 84fIL7f3q60qFHHhJ5Y3MaChj8PxoJN/THoHle2YYS326Wy9QNVQc7HwwaCMD3afx+
	 5Elvls0NFAimA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE317C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 16:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168166302574.7958.5882425025510345234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8351a3ec94a88a5a9fcd0d644636fa9ba647d21c4af1a0ee087e36f3c06aa9c2
Date: Sun, 16 Apr 2023 16:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681663025
