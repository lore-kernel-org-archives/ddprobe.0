Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15083194
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GndWYTuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87147C433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698541696;
	bh=c7p9kdPgycpIHpGkHUCCcj7gDXfg88gVe24XXUYVWcg=;
	h=To:Subject:From:Date:From;
	b=GndWYTuhD5DOjCj7gUC9XJiaKN4R1mLxjUx1fAl58q0D/fX/P+sxmL5f9ttHm5zxT
	 S5viIuEPzZ3K+PVdbmi7WnEePBH9FAffLucbcYwb+pEpAHYFZyEssa6xF1tQF1si6B
	 w86cliWJoLR2Vd8lEP6p5rknuk9JQsXMtmlzJ5vnYhui7xQsn8LA6cv7UmN9UbAKsW
	 Cy3sMXV6XXglNgpmGQ4r++OsNl8xi7WsMs77lr6b+G62cs/s0njaFuyXUs4hSY94p/
	 1cbEVQYbpWw5wyA4MYjMU+A/G3V1tK0UOFFMmPZ/ry0agOOqIAfic0T8syI2vmBGhf
	 6dJLJryNbt/6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6914FC4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169854169641.26337.14944452968126229038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9baf02cd784599b723348bcad95bdbf7a66617a74f2f3e6ca517708ac5df83d3
Date: Sun, 29 Oct 2023 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698541696
