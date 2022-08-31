Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5A8620
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710DEC433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661907053;
	bh=w4sRX4ePR3f6gBJaEVXo3PBBRH4SoQj5zaU1EeMf27U=;
	h=To:Subject:From:Date:From;
	b=UntcsbvPYZEvj1oVLFkg6gDa2BuHZzLy6PDQNXWgD+9cWqe+SBlyAnhYtMkZwOpFO
	 8mX7kfmJkpOxITWycI3h1pepKYv3iNgc/j2emZ9WcRPxLY/k4p5Trqb410ycHj2vrs
	 OvbFTO7rzTLABarXOTWJcRB3JlHFrD1FnOHRL7RioUbrT9c5//+n1L9yz5+4pUCZFo
	 LqTOdyokDj02J5B86eUxp1Ei5lQBz2+zk8Ij+AN4/z26pQz8xHBxXxAk9l4toVZ70E
	 MBzGL7ZbtR2Dy1RwAjV+cLBrVQcesDJW47lNYrbN63DnRdyTCwKaWzDnYHJ8LONJa5
	 zDI/svDUJ6YJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55FEDECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166190705333.16034.7731934359050543978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 245ade45b5e7ae90b0e856bc37b536453098aada155678aaf8b087bbd0c2e94a
Date: Wed, 31 Aug 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661907053
