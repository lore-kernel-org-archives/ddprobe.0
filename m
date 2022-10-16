Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC647B
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72803C433D7
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665885653;
	bh=8FWOiSurpRcri4RnYKvsEwZQlk3uwPbzLz4PVN83O28=;
	h=To:Subject:From:Date:From;
	b=rJFr5+wVnnmSOQNGCzWIjLqMuFRgHN5+XHRffzzSkbWKCK7tEwH9Gs1I6JBp3On0T
	 Q8uSqLH04FDXE8PcRyqf990n5WLKDbjOCuqgeHKd5/AjCQIaCY5lqcibv44CjCcJ5d
	 JtWoXBveu9BQzhzMeTy2YOz3aGxvk79xAXEyRbBBzjWL/Ehv9cvt3/iaNqsFaZjM8i
	 qbbZ02webll0DVTp7gXKBr9ASeiQkQJ4gfId5+VKFu3oOkivjBCCbCxzf6qLxnvoFE
	 sg+6nPaAEhmwqhDQTbykA4hz0tzMkbfsIIkkxNpjsrKn8VBuAH2ZHue4oP+6U+nHgD
	 1vwVbEIdNoWXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56555C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 02:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166588565334.8765.6221042300395330250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0618280a3def6c28456925cbddd21e8d59d48fb6fa3ac155a994474a3a4bf2
Date: Sun, 16 Oct 2022 02:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665885653
