Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58703FBF0
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F90FC433EF
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683152466;
	bh=OAqqIIUgUviVDfVURAXSD5iHqS1D59WCyzqEmiaGSOI=;
	h=To:Subject:From:Date:From;
	b=hP7rt87UanAY+2abwSbTwpZaoLNVN9+8o9AfRPIHfpXsr0Yj+gtG2h3gS9dPSgtZ8
	 zmye/KtHsw8nq9ntbCG6NR0BewddT9+1oW3lCzjn5n/2yQIfYwIfJnvl0HDpjZEupi
	 r67P49mIw1eb0Jz/MfyxKjNQzyDOfimByqham7UBJuBgZrbn0uh06FdJh5zn7+kMhX
	 xBjhBHD/VRfsYi5ExFipKqo6AQ4ZthFSekGhDBWotTzqmNiDu4HRR31nnOytuAn9Kg
	 lRaurhU900TNThSjdoBAbBWvAhC7D6Q4CUjhsjfEMTSKI3zBZU9G/RHr3+5RzYRSX1
	 3FsPiezGos0hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF26CC77B78
	for <ddprobe@lists.linux.dev>; Wed,  3 May 2023 22:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168315246589.15188.2152656708218201556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e302b91e16eaf9b8dda588255364276157f604375f1d69db9585defd1a90f8c6
Date: Wed, 03 May 2023 22:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683152465
