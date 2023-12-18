Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81F773487
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMlgzZqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E17C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702936696;
	bh=RlTplLTR2U9iFpwU3pjUuQTbnDYtbErVKWwHTkpfP90=;
	h=To:Subject:From:Date:From;
	b=MMlgzZqCFOsjyffRWoJsVqvp4hMG2wK49aw+O7/HbzcqBEmrW/UaexVUGwR8S7YQe
	 UbCffPJaCgGvClnlqFHVR0jQHHfjCKb2CTkKsZ5XmYYJ22SRojK8LMSUZxD0yjQvm8
	 d9+FGy3dkxambEBfzxfxNznDltlLxR7iN7dJSG6mZ6HwEdTPC38nWpPFwpa6pfQO9x
	 uRnUqqI/czPJjzUbCK8Gqbx3Oy8X+QwmiXf9l5hceC+qaHREg73oMxSQ35Ki9jxMCv
	 3yrwu1/MuxB8BXdJ88Pg+2umrOz0edKeHJTTxjVGIJArOet10p/WmCgdhtJNq+ra3k
	 7ZZOr1duTvOnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E968C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170293669637.25971.3273991459690053811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2015ed054e53527f8c1dba560a522832f43d25be56327f58559e03e9af6ae2
Date: Mon, 18 Dec 2023 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702936696
