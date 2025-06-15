Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097EC1F5EA
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749991194; cv=none; b=esYClCYoMwFa0O7Bt7gDl4QYA1wCILoTaF9ipsaNYTQlJ3EvYvpJQ1AOdulUem+aDkenRAh3plJIAzSsL0ruDJltKqM4ixpxh3ClVBqvIW7CZ55i7MYHXElehgtFhgjq4l6VjTDTlutBvvzDKS+DFnHwNBucy5dELY/gVTpj3Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749991194; c=relaxed/simple;
	bh=7W0Lwyl9Qrl6X7M+mXXtCo1aaqjw+WDDNl4qF5PUEVs=;
	h=To:Subject:From:Message-Id:Date; b=NGhGu4mDALago+uLyoPUYBdYrVQBJnVDnzWDhGJWIh+5FL6KrhoixJL5tMTLa1bvdkjfLvNguF6nn2kWzdhYGzfFxawHJNrSmO6JtHj0A6gCKLCt+Sttk/Ow8ReKQvfirTciMr5lqd8oI0N1hRfGbasl/cqNo1lu+UqE8YtOAJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L08XWWob; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L08XWWob"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A615FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749991193;
	bh=7W0Lwyl9Qrl6X7M+mXXtCo1aaqjw+WDDNl4qF5PUEVs=;
	h=To:Subject:From:Date:From;
	b=L08XWWobW8zHaEWFbWSG3gWla5q62fFZ+hIQszM9HzaDAreJsSk0w0hSTvkOYDarx
	 TEbCQ/lLR7MDRks0u739P8H7/UpRc7MeQcqOeAgJKFqEJSRHAOdVrMg2LN9hnuzbk3
	 +lRHbQB7yMR6gXfSfehcyBcgNYTdV4A7emsVGr0PS1rTurFLvKMzmhloJP9WnuI5hU
	 USt3UolqQbsoRde6nyHr7VR+yOPCCZ3R+I73DsNGf6JR9okLyezS5PSac6BXtJxZQB
	 2YWRA7joDgYvxfMhRfry9MjAqtkMzyO+oCVs9BoBK36LLQzHYgCY3fwJbHrG2Pj4RW
	 bWsDsCTdkJbFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915DFC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174999119358.10753.15167857328879397052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5336df8647b51cd1e53b1f37e4e58f148f2f1778cf314fb933a5bb61e9c343d
Date: Sun, 15 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749991193
