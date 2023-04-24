Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F2767C
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 11:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAACFC433EF
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 11:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682334726;
	bh=dtVQbve8R1ZZ296q0F+Yqv+V8PKzVPLQuH+mRUhyPGI=;
	h=To:Subject:From:Date:From;
	b=p9ol9vzaW6MmTeQ6QiLGOOiz2q/bqmv7ZOOn92rpY6IzaQ5OTpfQ98SxiGwOCWrzp
	 FGpIHCdvHWfH4dbO4LLtPlnQL/LnRMYovIEhPNQCFriIX851U74I72d5DEKME7e0Nz
	 +qBxCvpEe11ZwBzAztbM8JYRlylFXQbXXEwk3qmnPkyzmlbHsWjS2V0bl76cSMu58n
	 tIPTcx1egB0jlvWC93yyj3X3wcOK4xir31n/C9I0zPTw7s1IqVUvpoGkpB2SHdCUKK
	 cuG2lxSTzMow3foww0jFKhnCLk6hoRC6I2cgHTrb2WsUiQTkRoXIG4/IcxT+c07fZd
	 rqw6Q2XjsaU7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B97D6C7618E
	for <ddprobe@lists.linux.dev>; Mon, 24 Apr 2023 11:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168233472575.5593.8068988683168292021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b9c5e1f562d080017a031ebba8e16e75e1ba3e5bcd5d64a5e4862b35ff5140
Date: Mon, 24 Apr 2023 11:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682334725
