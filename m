Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CECF08F42
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79DC3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671320487;
	bh=r3pRpqxrBNSfWunYJ7z0pS70W3kR2aNx6YS/tir/wLc=;
	h=To:Subject:From:Date:From;
	b=Q5X71PBeugGbSBbkRnTBFwGa6pXvwXl+EdXppht/iGG7yq7CdpY6GyaV5Hp/UVjQ1
	 pzq8rjYtjjgBfsXsGQF/MQ3LWydBMyn+ZzYoWdvfCc3icdN9wXkKy0uDj192g44ugP
	 3Q10D2jXBSg5cRyFz3qj5AXH8GbzgfB5NB+H8ZkwrHuudCb2/Ep1xE7uybM9lNV/3f
	 YdPC9MyyeKGgXPSmzfCgV8ufSeAyWXe6+JCZTtHV2D22Z9zJWXa8rCp2yYHDdl0ZUW
	 5f5i9Vf/us0RDKfbrskbshFD/AJbn94tERmdyFifBGHQtp+H+k0iVDbzWh9Xgp+RKQ
	 goPKfR438vdOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 605DBC4332F
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 23:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132048738.30979.11997338175028964306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e597ba24eb07f205879ebe4c9796099682c278d6bd40aa47f77f0ca475ca5fc
Date: Sat, 17 Dec 2022 23:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671320487
