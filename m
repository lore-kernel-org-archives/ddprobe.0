Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E114629AD
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82464C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661634652;
	bh=hmZeZgBGGnvQ+diV7e1UCkeOsDARcnJ1dIduF7798xQ=;
	h=To:Subject:From:Date:From;
	b=Hl5Z8O9a8bu8Jp8bPBwe7SnNxkNCQw9Ha4On7FTs0lViYapsuzaenG0GSrPs32Phk
	 FJTVCww7pfkk+Sw+Y0e6NOpAgGMkfJzabS2mZiN5iw2cRrL9Yji9asVnpyAT80wp9X
	 TTUZlzJfASQrjphpn9RhLKW5KSA/aNRk9qf3AoAR7RlVM10BjcE+yR0ei6bH/uugZk
	 POVaY1DR+FQ6d8JdCOpwIxyLAhy1wNPJXAFqTS8LkcOre/QFt1cgx27VyCWMrCkwvG
	 aeeOHQsXKqtJBYzFpA8BBHiYcy34u5U5VFBQVf+AxYRJHi8WNXJFmJZgivrP+m61nH
	 GJoyHnQdLXFpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB21ECAAD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 21:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166163465235.32100.17402105853499081505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af808ca38a9d197adc76e6f149dbd1cf3cb11d865cdcb3c937fe0340dfc3403b
Date: Sat, 27 Aug 2022 21:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661634652
