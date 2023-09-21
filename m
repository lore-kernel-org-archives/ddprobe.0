Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85896168B3
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 22:55:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB2DC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 22:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695336908;
	bh=XsCgneJn+oi8d4T4tUnk8gBkUMLr7S8+XK5D0GntWUs=;
	h=To:Subject:From:Date:From;
	b=YJ28tB8WNV6+RIYAdl6X4fodifLVIGhyoK0Z/3ne6NsbcfD9VAEO7WHIIlRbTdsol
	 g85w68+2Ki8GyZCdWNiJ3+wg5cFxhHA4E8nQsZ4RC7o/zTTT7c11nxuYMiENAzUZGl
	 4hEN1rcxJEhzwANZ0IgtTGge3b/BWfI9okfmm44B3jEUmBjv9HGXqa0t8jfnTAfsb2
	 MIEdAfKQR8juqFKB0vUgN9l1XRjJ//8fHVPA5rI29QfRI9WPaxycdow+B+q1omGElB
	 rXZxIGTkP0tYs9KI6nTOOeOwIvPPE4MPLFYQcue9wQBxccYsASQx6KmemHfd453A4M
	 5EfcRoDiX52rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B50D2E7D0B6
	for <ddprobe@lists.linux.dev>; Thu, 21 Sep 2023 22:55:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169533690873.21786.12137265784419744938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831eac524c28f782b193ecb3b9a5e833cd99ef893f2828067ea8dc030cbb8e34
Date: Thu, 21 Sep 2023 22:55:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695336908
