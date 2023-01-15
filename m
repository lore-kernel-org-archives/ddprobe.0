Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E60D2A20
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AA2EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673751087;
	bh=iBi0AfeoOg2avijUL7DCxNdmav2O7jGWytNp76Hw0q4=;
	h=To:Subject:From:Date:From;
	b=XKM0m1inc1rHXvmqgzRraeAw0sccSAmqmiY2a7k5XKlgPQk1sEj0MYpVQNZQ76qvd
	 iBnB8eXS/hkiEUwVxseVpWzv40JHTS/48JSPyoWIY4Q3UzoyQfmN/bl3FGlMjswFOu
	 Tiq1Mc/BvpOWZtlhalrICSEm56dA2Bw9hu+EvMkzoma5tGk76g4qvk02AedDVp6qym
	 NMEMnsE7ZMPwSdiEAruBCnGUqn4czXHzFtWY46g8xE68NEQuDEhF9SrYhTpbYZyPcO
	 e9eegLPzBKAXlIGQp2IH9jV1mud4nlzlYGCBoDcgNU/gm9hc4EzyGJHKpyqawKFze6
	 qPw0LkTkvjHjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66688C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167375108739.28715.15962754068537836662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc17def97c74b0505b9a4969d86c3f06106810aba6a2a9ad505d5d088c0cb841
Date: Sun, 15 Jan 2023 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673751087
