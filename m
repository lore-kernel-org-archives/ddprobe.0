Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECE02F5F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 16:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1C747C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 16:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686415326;
	bh=WU7FhyGNk9x1Yz1nZ6pKC3b3DKE+kE8PVPkvvyTLKJA=;
	h=To:Subject:From:Date:From;
	b=kakjqXrLP7yGLbQifw+wQO9I5lza9DB8UFK9MQEaMcsWQDLqWetYh+G8gwBFUGYxo
	 qthn7/h2ZsSPK2FppIXu6O1hGgANLQgVVBrpJiIG20bmmcKmyrio6onH81d92NMsdb
	 D9BZV6oElGErbpRudUu04AsQvWYuhPVS5yop3Dh6BATA4W4BQXXofW9jH8f8wHmQ67
	 GnbLSwyil4qpyCoTzrAkNK7iNfATvbjroY09CYrNlqAeWB4c1KkcAOW7JGFDQ7qhlJ
	 Zfg6D2Y4v6jEuVEXstMMhVh4dD0iRCX4hqZmSoLNTOpWIPI6jccqNs/uaiCyhQcBmL
	 qCaJRg5kBUi+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2E71C7EE2F
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 16:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168641532579.20630.2537657648080527158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d991bef51ed881144286ab41ef91830f4ee506412f32a5b7899c8378ceb5dd0e
Date: Sat, 10 Jun 2023 16:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686415325
