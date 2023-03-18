Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFF6622
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 04:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA17BC433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 04:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679115125;
	bh=Hw1hhwIlzD/CK5WcNIKr/mbitTZ4kLa6oL7C4DYWQgQ=;
	h=To:Subject:From:Date:From;
	b=cydK/bzme8FGCEKv7Gx2WhxceEkyElgm38WmwxMlCbDioqRy1wezGr9KPfDu0UzJI
	 vkDB7NMt92TvskO5wJFP2zRwWbtKM6BqJsTdhoV5pTdoUbJZr7l1fvkIrjOYySDh6Y
	 TwCGP4K3s+n0kajD/34tYmHLLOBrSl/ovF2Q/KgF2r/TOXeLz+yOODxzbw+0og8Lj2
	 FscyboOOUHnZL/3ewbH2bnw4daXoFjljeeK+4G79Ach2ysQjX/wXQfF/gU+QnBAbSq
	 z1Y2rGtwAJN4gkOiJ/CibAeyABcwMdJFKkSjgVsdio91zh0OUJH8knWO1ojX64pyM8
	 6SUzQ52TQmHwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB5E8C761A6
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 04:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167911512575.16692.17545085767244064623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccc3cdfa505284a32735bbd5ea41f4edf3709add4ea4559f3ba59c54e8a952a
Date: Sat, 18 Mar 2023 04:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679115125
