Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9EE07E
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80DC9C433D2
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672389087;
	bh=NR60sNpmB33EENnKHb+s6jHlK6CQNV3SBFKl4qrV0fU=;
	h=To:Subject:From:Date:From;
	b=rxGcDXZZRkvxMpF1BYpvH/g8DMvZ/2jJmufipdDDIpvozqkYV51wHgHUnYWucS6dw
	 WbYahUN7WyUjMUpXO/BiW+lpI1OSIm2B//oCBx2MFpgZqUK8odIf4Q8cFD99Kg7zEL
	 hLGKI8VrTtWYG5yzWpExM/dqfPsVhYSqvaGrmc7yHEbDs2uInfqdPsH8+0m4sTYIry
	 kKOwQ+ZvfyWv+6XavQAdprVJGfaKVUurh6e2Hak2CpfbMerziUDty8qfm9PGrcO5Qh
	 cJHXnaCdWSXdYSoavt6SEcca7z4rKffFgCv+EL8eUTgLFHE36uOZxclwxGj1mdw4CU
	 JgibeAqU5EDug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66957C4167B
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238908741.21259.11245964780723089155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d385c9f6ef33f474a69fdb0e1c7764c75e390c55821481a22b23490a19f0d1b
Date: Fri, 30 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672389087
