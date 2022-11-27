Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D9019B
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD47C433D6
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669537854;
	bh=EDrV6XrK7ylobNRKl7Qub6wu0EYWo13VA1ax5ZYQImU=;
	h=To:Subject:From:Date:From;
	b=BbOGz/UlVtgrN/8gpuMZ75Ir3/VpXLUmGKW0aAYtb5x0Obf70qIgI/3ZMJ37auI5C
	 W5N/HYfb9N3vsbKe+0AUuJS+jsl/pOmarmkDWaWswq2ZtiUx3ETfjFX2ESy2fU5Hvn
	 OXv5STYyiCqsbMlJliHdzSbBUQ/OUueXEZLYhCMGfHZoDr/uSgoKi5S3DgjgavhIMi
	 OA9VUtrx5idI/wwypgIX1Z2UiT0zT/uLI8RlP/ejpatwq7KmqwqgZW9c3Ai2T2BmRw
	 q3Wc9pnYasf7PMihujekgOmUVEa38e5iFqF3fXUY8RlQIlgfMb5VeoCUeQBM3mHq3M
	 FbSWWsj01lMKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F93BC43217
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 08:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166953785431.11100.14942576776527545976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eabac5e2d2e6d8f6802043e2d7b010d2e474c9a3415534737b2effa231402ae
Date: Sun, 27 Nov 2022 08:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669537854
