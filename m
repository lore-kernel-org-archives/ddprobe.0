Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98821369
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECB3C433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666527053;
	bh=GvJhv8VcA83zZ/YbmWzuSbqQZ3vigOhEwualPbGiZmc=;
	h=To:Subject:From:Date:From;
	b=K6oM+CLZRrTTKwOzitekcpge0VJYdA4+IhC6Jz9wmKNLzTQkjQOI0nnBSjGYzpjkd
	 rADooc/vQ5d1XEpASu6qrNh3vqiC/jnVkc6CDrNgo1zkn5J/0EeHD9+zPsPBJwx4e7
	 5ppUx3KwH5kNUr1bRfkNGJoSvo0o5m6mW2BM6R28Q6AVQcjMgQZIbF6AMqGxNnBApU
	 kXE2foc1Ow3XVGHa8fZ8deOVAtAnD0iz5LqovxSp1ZdycYE6atlSO0VrI5R8bcNVxo
	 wT8qqudgkwN5nEya95G/Yh6g8x+Lb9pzZiLX4HCFRgjn7hvE83GyjIXCxaRtZZfY8v
	 xd0j+pAUx8JZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51192C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652705331.6561.12874423010565855126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ba96a700f7a11dfc751231401c3889b71da0944e5a51aec1922e06248fe5151
Date: Sun, 23 Oct 2022 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666527053
