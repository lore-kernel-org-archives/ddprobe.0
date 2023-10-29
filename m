Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F00AA2591
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUed0D8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87ABAC433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698597496;
	bh=6At0O6sdhQHAe5lP3J7ijutzqy4SsXgy/+5N6abbijo=;
	h=To:Subject:From:Date:From;
	b=kUed0D8Epm8b789B1bkGNsj8yDzJ5eDVmKFeAk+I6/wB59fEn0cPKqIX/qvycrBZf
	 8Am/89vvwVcrrVD7F2+aPFxRV087Ot5qtO/W0O14Kze1PaXqYR5PuOS4z6awmqoj70
	 R8sogSz4fA8T9S/ZraqzJC430yiNWYNQnyXw0EE0kB5EFHcpsOSe63dZ9xxhq7Phel
	 XVYcXteZkS3mLGb9i4IQtC0F6G7lsezissWxoUxx6mNKxbEYsFvnn4ZNbh9sZ8Kta3
	 gf8JhCMpRvw9P0+As/Tx4IAm0vLOI6Sb8y5hYPFvssR77yDJQcUBG3+J7HiEs2CCsk
	 T4yaJ4M2RrItg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B6BC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169859749641.30565.8158069183542873631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61eb9f4f1b77d63f1d00965903399a641a33efabf8fff59e33dccad890401e33
Date: Sun, 29 Oct 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698597496
