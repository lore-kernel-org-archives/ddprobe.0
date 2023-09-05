Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A30A1378
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 17:04:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5DE3C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 17:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693933448;
	bh=XeLL3o5qsq8761YBSPfpBid7m0bJzQiCrErlM4Lv1B8=;
	h=To:Subject:From:Date:From;
	b=HmPjOtUHQ9SyqsPg3EMv0bdnCUZj5/heC8CLlvWHx3CzMjTlVCdIEl7Vb60BYQwag
	 Zd5b+pAKfRRh30d9wFqC17qdfnXvBnP85ozE0XUvjO0Zm5wYTtFisSpRqvTwa2EVKW
	 7W+36QppIxmqbs35tLCxDHkqTlld/V6Lcq4AKcPx32SBJiv9ZRNi67hFSvDz15zzSf
	 bItCOz4lvpzOGgXKX2D1JGTosYTs5bzwYn5k0wlWYXqVG7zxT+/AJCu8pAtVrc5+Hl
	 w+MVu2tq6/4xvp0GsaxtiNjVVeLBMGcNBbCWvffNWGdZ5zUcX9+R6kNdmtdiR5o4JG
	 Gyp7rZnssEnqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4338C83F3E
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 17:04:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169393344866.6349.3214036092875433213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf91c0474e65c80ea5428c57ef5f5666c34ae8ece0b1aef5364cb387f39f06a5
Date: Tue, 05 Sep 2023 17:04:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693933448
