Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA8C76034
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736744754; cv=none; b=MlkLJyIezs8KDiifySVMrKP1+nL3Hy7HNTcwGLGoDHSDAFt9I7aOyH0Y+QTVW4iIbzMTg1soka7Ugm7zjG3/2mTY/puh7RznnvhBjBRP5xoF6uIz5O6m15lkeee47qgchfnRKWNBhPPT52CCIMAWpiZUt1Owl5on5yvfLoINveY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736744754; c=relaxed/simple;
	bh=xDNyftuAjAkrsUvA4GgYihwZjdSGEbb2oIz7hQ6rKdo=;
	h=To:Subject:From:Message-Id:Date; b=M3JqAA418aNmS0rTW+U+osRKFQR2KOt1ljD8KR3ZkRRQX2clBoTj4yHK7OydWqDDLLgqfMhpgLlBHIBnw2ArQufmgfOTjHUNMBOvEtH9NwtNfFplUF9aVq4rrcACmBJkzGUD5fSQtpxSLOxudLP0ACscF3JZC14zlaASfQOeIXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afWKok6n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afWKok6n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF495C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736744753;
	bh=xDNyftuAjAkrsUvA4GgYihwZjdSGEbb2oIz7hQ6rKdo=;
	h=To:Subject:From:Date:From;
	b=afWKok6npWo0YJMpr4fzq3KS7ZBAKqSDdWjv5c9fooC73BfEkwbq50SbfJ8rD0/qZ
	 TmGxYWVA2hZVqP2UtFa3tJwBvUSTJwrGcrVtn85JagQ5UOcQg5Whm6lI8Nopz54lQP
	 LP8lyLzCfmTgyeFkdpFI5KkWPJLmko78R6v2Ns75zf56QRlxWIvViDZ31c1guZ6WU3
	 W5Qjye2KIOzH9SNqa5ufCY5aUtN+t4D4oVyWz8B4B7bJb9CtrXqfcDE99EtCKqYkRG
	 jYwsXC7MA1bnsuzWbA9QR59Am+UzP7oRpHBltmO81YhacKVKIMlMf/Vx2C5KJl0/ch
	 GfCza8v9NuMWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF86E7719A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173674475360.4484.16357244090269650073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f7e2dc7c7a5386c4a59594be852ca6aa0a6db2214ab975f985da5258d38fbf
Date: Mon, 13 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736744753
