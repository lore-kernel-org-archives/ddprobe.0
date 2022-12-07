Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD726626
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 772CFC433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670394054;
	bh=gVBMhSkGZ2bt7kIoJcwGk3oT6FsBPCanUdZfN0DiRsw=;
	h=To:Subject:From:Date:From;
	b=u+R/CTzG2r4ciwtI0V2JWdfsZ0dKWBW++g+OPoY3DxOSJyVZYwjli6TcWvRR2ZF0e
	 RpLRWlqiFJNlvHYrWwrRiJFhYGOgoprAW3tu4fPnCFCKmhT4ZBxJMmP/ThvEu2Mf7L
	 /BGFpkrqr7NJWdVa1YQA46vOajqQzSFk1FiemavrgybrohMPzqfXDXvrV1AE9FQzqh
	 5UtvhOT80CZjL4IiG3jwtYcAUbdgczeO0R+akRaRdCgInqsd4t9G/LJkJ8zQAFkDSc
	 uqHZasGu6hRyHZQCYIS0CWWNXpbl69JpCNid+y4pwjVF3dT8ngI/szHMlmfSb2O6Ul
	 lx1LobOsLuNVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E8BC352A1
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167039405432.18510.4270585412215658499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4735060de9cdf67da336bebbc635e901794c31cd8dfe4f284525aabcf21d3b8
Date: Wed, 07 Dec 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670394054
