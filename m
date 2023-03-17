Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477CE79C5
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD5B2C433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679081525;
	bh=3DeISn1YbYu3ZqPWQn3HqC8c6Es0Q7ICknlmkDb13CY=;
	h=To:Subject:From:Date:From;
	b=TGjLRrD22d/Y6RwKMe8RXwQkrX7nlVCBworBKwp7x5Qw+ZygK73ZjWUcMcQ8Wrg4R
	 lJ5eeqXY2icGuZs/KLB4U6U9T/lqAhYoPvVGrlJIyV3h3s1RUQ6O/ZbcF3dnnVV7IX
	 euED1LDv4BR9zUORK2Y6Wv2XJ63gRM6ja3Jakgf6kJbwYCkWM/uqt0NN9WePlnYgQR
	 GvrXUc3rbqTE9oUeWu57+XRwngSE2l+Z6XIyLjFfPq1FpqHFuxa3pwzYAlz5sdz4aL
	 4XdUDC1IkI+hwXED7R7I4wj8VTKsWYEr2LjdVZkmS1TBUNH0hwMVKk99uW5GK03wpg
	 Itat0y4LpPiOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDA3EC6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 19:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167908152576.32082.15034348160971083869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e3f05979720b42344914448635923ac41d10782bedc30b9398a2562f95cfa7
Date: Fri, 17 Mar 2023 19:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679081525
