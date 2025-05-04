Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3CDEEA9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746328794; cv=none; b=Ofz6/do2zCUl9yJwVQKnvqGz+aFg5K3N39R0up96mUgZTJXSCXu6mU/dBrpZTa7jbV5fgHb8c5ImLaFjbogsFCmFqxpMMTM/xx3bPxsz323ucLkCpytif+dwK7+oU47KkMa8ITgVGviJ7hBNlLJwsRvhT2E+VXXBQJoolmE5d/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746328794; c=relaxed/simple;
	bh=vnW/XB2xOpO3h0o5kIsc37NOwFwgQK/Y4ZHf0rXniiQ=;
	h=To:Subject:From:Message-Id:Date; b=ddENvJ99oZzZM9rk9jHaiOT9HvQfxLG/ouaVBxtql4mOz7zn1pt+dlV4SwFdQfXYgdS/JNjoxbUcZH4Ts2xH/ELFt/QIRtszGGZ8DN2dQ3JlKplfoZxIcN5yVDcc6KNUtea9HJ9zZRpAeY7WN/IN1SHOXaYF7yzsoU8QIaPbUIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4M3QHBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4M3QHBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746328793;
	bh=vnW/XB2xOpO3h0o5kIsc37NOwFwgQK/Y4ZHf0rXniiQ=;
	h=To:Subject:From:Date:From;
	b=e4M3QHBOeA4X3wzwMVAt6lBggGDVbaCqHwi8ilYo6KhbzxZwUTwRpGh6IsVBT5dmm
	 ocd5tVFIUycWRNYgPxPZbHEqfITiJE8mSyvkPngVIpLbUFjvsOU/iVRGi33DYBvRWE
	 cQu70Kf3rz4nj0Cl2wvlNYLU96wUe+qwmBivr7F1tselGtd8EJzOTFYCiMeIDjTl1M
	 fRetEL2gmqbX7A480QLiReYXs40zJAYI9tiMNFsQiBIooAERMdl6RT2dD7092l0KjU
	 gF3RYKJ4+eGXi965ADSzsGSC6gJwkHjZTUqff6F1Jc8zTeAGYq1S9S/Pp5dDdAih+Z
	 5WXQCcxEUtWng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E5C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632879357.30903.10541658340158000860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da3765797d92cb3e9dbc68cd318f3bb0c3a9092370d06045be9ebd4bf4d41408
Date: Sun, 04 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746328793
