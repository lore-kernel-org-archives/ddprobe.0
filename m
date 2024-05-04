Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65247625
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714789943; cv=none; b=g7Xqxh33adQyXJbrTddMmZ/79Dmq0cCpZbY+2OjbbZPYwvlFvNKIXOO0K5wfm4BKLt5veIFwaRWKlx35wdPWS5mNORxIFZJKEXNs2kJ56Lmlo7STMGE19Pyun19A3bCsnaqFc+6Fps5/878VCs8lVlCMFlr14OGCmpE1z0DTuyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714789943; c=relaxed/simple;
	bh=OW9fC9Ot4m7D2aW6zjDp+VpUy8HyRCLKMr0Dt2lnxD4=;
	h=To:Subject:From:Message-Id:Date; b=Z31fUmfLL7XSuspi7kgo2HENC0/TgnUPjn7FEOuPYWYBLy/KYJVwiOvZd5aYQ7DCfYCKhhHrsZUcaj/R7CVC5Ptfx7qdALil9pp0TlFKzOXbHUm4QsAKyAVm8N4tHVm/KvXCA/I46nJWRpQ6DZ7LB44WROtCRQcIFp1EA8e2kI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7qJ+Hrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7qJ+Hrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2FE5C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714789942;
	bh=OW9fC9Ot4m7D2aW6zjDp+VpUy8HyRCLKMr0Dt2lnxD4=;
	h=To:Subject:From:Date:From;
	b=A7qJ+HrzeOyolJvw/0lNFFgz4GMDYUBqNjjWOKcBP7Nr8SeA8qtsprw4lRAYRDe8l
	 gKEbz7lmDQtQ39qeqhX8rUOoET4DN7MgTSdXs/awwYWtB/X5h/VVjsLgviIkgOeeo7
	 Vb6jP+FBu60MKV0OgW6MIX6mB7T8SSFAi0vXKMkrde1OmL/OT0fenSSqnYcE5xUGBy
	 l92F6vQCBsWnhMYBPEVLsz6ynOi4Q7vUAIkiHK5GNA5uNHABadJ8/4x6q1PobljPmR
	 twaNld8U4m35CqMOrJSnMEqsVVZomVvciQJAY3M+PNb3gnrKarQC0RU632Kj6yaxz4
	 S8OHCS/cXVRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9875C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 02:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478994278.24572.18408395412616906560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03e72bb197ae5c67ea3e82f383b00035b16f93fbe25c49b115ac83c24222e5ed
Date: Sat, 04 May 2024 02:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714789942
