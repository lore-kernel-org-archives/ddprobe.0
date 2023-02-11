Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1502F3F
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D9FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676158445;
	bh=G7JmMTdxl0EDiT1VWM3Ij4+fQOnjY2OiEnCoAtuGPoo=;
	h=To:Subject:From:Date:From;
	b=VZN/37jTzBwpXmEdf5ETs26NI/E6dh7IvqsQvJKoZkK/COPcUNv5tXlbmoMEzkfLe
	 Y6zKbd41Ik0cyFocwfbC3ctbH8cK/npjWqCDN2mC7hIkM3zfB3xdvz4itBPyWSneli
	 pMNtcGr/VaW2mQn4ukiwhCX+wCcQ/dWs3H1m4QBBp9Wjpwna1buEUUy2GHAhV0EQ7X
	 GnyPRvkFjb7KL3lX/Ahq94RzA7UeqKCpcJzb2t1HsXaHZv7FB2NU4nmvSh+CBctbZQ
	 ojlF8n9aU7SaY5UNTtLJC/wz14zV9VEWycETFOiG1zWh9r8BeoK/e5AVzUy3osNEOe
	 ZhoTKaMQk25Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC8D6C636CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167615844582.2752.1977484543597697473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a1eadb6dbd330abb60c10941fe436d73c2e81a0182712b8746ae1e8e34eb8f
Date: Sat, 11 Feb 2023 23:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676158445
