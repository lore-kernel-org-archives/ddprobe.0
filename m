Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E105FC02
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFf10crA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D76A5C433C8
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696792628;
	bh=e4ZjWD6kVnfc8MO0QQTUvbkUR1aafw2Vc/LkXJinFok=;
	h=To:Subject:From:Date:From;
	b=GFf10crAZysADjpLw4rVdjaAmqBxnN2lIntf6iSR9PkTNnp+jSbrFZoFqkUo/jWDF
	 4AkT9ckk4xSxYVhDPL6Y+nrlyik0/adm1KS8mWMVOlQAJMK4d4qIu8lNjohSB8cJSC
	 NogNK0JBAgOS41XGMDcDQQCrA4f8pwAqIJsicJdyC3xn9f82eVqAerZNCn0pMxEa4f
	 gQkyR0V+IEUrz+5bDR0mDVje/KC7vflvjA0a0GnvKWD28UNGVCSDXx6OpOJKfU3K9i
	 J+ighqL0ATpTLVc7uZ1e9MTxKFPHJSA/zwN/kXybs6IsZb86PzjLQXe8bq2FAe5aqn
	 0k7s12MuCaxHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7266E95A80
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 19:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169679262873.12004.6324979158742644037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a411d02488e22b6d547034129d30815790eed6da7417493643d651c60ac592a7
Date: Sun, 08 Oct 2023 19:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696792628
