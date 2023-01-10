Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCF4B422
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D31DC433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673387487;
	bh=27EFBYvQuxHl8spTaCDqIGL2g1qg2uwPtv71YQ0XeeQ=;
	h=To:Subject:From:Date:From;
	b=CIy9e6sgdJqBrqJCjfLDlUFFds3YKBEdZwLVteKyAhi91k808jgqBlrtgw4bBPGAg
	 Q+he65Oq/AjV9fw/BwMePyjaasNcfMDyKjJH5pbEnFjkeJN2fa7zSyYspqMYWePjiN
	 jmwBngY/myH6pJacdmmJEw+Qjsr/Rl1RYsoWNwERiBi+lBAlszm7uUM9wJG5NBzRgz
	 OJfx0AJQy6iOENXR2AjabTobpp1LGccLqlPi7dE2AW2pAb18NOdmsdc5KoimL9OUz9
	 xHOHantNDp7L9hl5Kgr52cE51Lxl9W+HnUuE1CWMjUHf3Y7QQ41Irvznt7wLVAC0QV
	 ZnRXAzPpcx7jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CC23C54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167338748749.26113.4176564688876582926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b724220b721b79772aa037ec5b0ad8a9d15d85e784843c0e11c410e71fbf2cec
Date: Tue, 10 Jan 2023 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673387487
