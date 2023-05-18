Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9A33D38D
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69FDC433D2
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684439765;
	bh=U+laYsxt3yfxad31dNUmjobyUtlNXNkpUHjmzQBzgRM=;
	h=To:Subject:From:Date:From;
	b=AfXUFyxX5wnmLjKxBeqPo+hlxHkDnYxyQQoNbuBQL98mSA0qSQBhTsVioyia6ngvm
	 3ukO0S2ThHkp8LiHaAldS9+dPK5aHjQTd47CllNkaxQ6yNBKMrtR89Lgii6KkvJx3b
	 kwgspBWMGyJeQ12Vf8xsUVkaaQbfzENFWVs251SaGqLHoVxOLUi8TMxGFhzxGmKsFN
	 BjLmgGcF7EWCzqjmIKNPGKJSO35nP4Y9xUldJBiEKkQ49UVT7WUpuxFSGSDhegn3wg
	 eY95DQuvC1iiIiLTklAw9wbyiyQAKDsKTHEyRGpr4z2E9RZpBQuBv182Qne5jBLoBR
	 sqY0D8SrOnBsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B828BC7EE22
	for <ddprobe@lists.linux.dev>; Thu, 18 May 2023 19:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168443976574.16201.6264202220604914080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27d6fefa63e8214fd0a71024ca5c3a144ef2b15b2f6479d2d0b3d86543fd9c4f
Date: Thu, 18 May 2023 19:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684439765
