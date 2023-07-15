Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7053E79FC
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 18:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBEC4C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 18:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689444069;
	bh=5aCb5UAfveXgxrFaH6QKPqK65eSjYM3LX3Ow70kBb+A=;
	h=To:Subject:From:Date:From;
	b=nPERESUM/P9Vy0DtKM/XWf8KyxaGLZbRR8dQ1q92sfCp8tPc1At8Dp+z3CenlgzEj
	 srbDa1VHao7G6+l9OoLPCduzt934ZEujLjzE0m7CW/QS6ssQ02MKr87goxtz+hKQmE
	 S+4TqvNY0bjBBghwIujB0zTcdYkHRzOQsbIGTQYUOk/qu9qSfsFb7f2bKNgAhtHUP7
	 NbWjez0puQnsPYYSez9wdWpBgucTTa11xoE/KpQiaD9HwVRqldDbcBsYPRWQwUVMA7
	 JA54mGQa36J/GAya2JKw6Uae59uDQVDw3bQnP7zufvaYTu0jE1sAXP0hneJYzdClIh
	 kn7DgaiYHMhNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D70C001B0
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 18:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168944406876.1499.14774463473148238488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fb8414bab408034d93db602084c33f038301b18dc0c3ba7bdced805471d9be5
Date: Sat, 15 Jul 2023 18:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689444068
