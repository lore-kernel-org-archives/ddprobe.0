Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400F763D1
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC5CC433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676906345;
	bh=igmngL3KI0Y/S0paobWRjMSFM/3mUrLjIB1+OCeWtus=;
	h=To:Subject:From:Date:From;
	b=mOyJ9zb2ut0FFwV9aFj3BNV0WySPly8pT2Q2JvQiMiscjJ5YoEGRjDEspWQDdRcga
	 uDaAODMnuZAhZEBlN/bVP44y83BmFUAvb7ljexCt4sP7fSUqq+A8XeWCFqtfAAkVOC
	 YmpyppZbAvC6e9IRCykf+ANv8+KtXbgDXhiRpoKkA3e3q2LLjis8mTOnAuMUoZODfw
	 hycj4JH/36gCnONcvAqFmkmER1M4NaEOwD7+fZpJO2/6YSBVPtSPOgF0dbx2GpJmvp
	 ACjD47hp6tYhrIkfyYC9aRFcoFrjRr1wRBLp7j9u4Sz3gpvC/rBLAlMndxWARMWDO8
	 +mmNJHEhbxKpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC193C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 15:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167690634576.1717.8710470084221453801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92d7069fedc730cfbf3e74e32c43e21a812cc8dfaefa719c7d244a642a16c7fb
Date: Mon, 20 Feb 2023 15:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676906345
