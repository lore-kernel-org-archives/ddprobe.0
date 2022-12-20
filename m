Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE28379CA
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C86DC433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671559287;
	bh=P7Isj7xdW524tMYsKKuGoovqGAJnKRp3P7A5nZ2PdJs=;
	h=To:Subject:From:Date:From;
	b=lvcqsTo0GN/QWfUiRbkNC+GEznPMlS9lSbqwp99u7Kx5i0UDJFhgXFrlo1pfsiO9b
	 3NcvGzK1+vbxxYwP3Q5qsd3crkErXkvjzejkJEHPO5RrbH0feh7/yycPF326yoEKEg
	 81bWexVUBQwWcQYrY5SwwAKNSQzGgJ7MyuP4R57i8i5W6i4ykuyLvgkS6iAkL6gPyD
	 zN7JtMXfYccumD55pT2dQJyOw+DbBowRhKupBavTzqQKHWbIiee6KNHLZOcZmVzzZK
	 mdDnaCBrJLrpPcTBavm9W1Kl5BUEDHosypWqMPTcttP1wW/iYGsECHyGnIu+BTiO1G
	 IAkCkDGo1THcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFFEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 18:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167155928738.15489.12736756909493481861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33bd3f9f2ca67261708b376f880cd6dc02ace1108b69d7ec63a94df1c558eea9
Date: Tue, 20 Dec 2022 18:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671559287
