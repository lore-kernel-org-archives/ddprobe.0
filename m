Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ED64200C2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDDEBC433EF
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683912306;
	bh=Hlog6jBrTz44YnYVpEMC0AouuTZIsBaNe15NUYemUT0=;
	h=To:Subject:From:Date:From;
	b=lqmKvb1FAw+ILiEj7vDzqH26AncYAAmW62E9EMLXGxzFUu9xkICTnqcy6RJ6Jtu6p
	 j3RU12P5VNFzu+2mjouXVCyUaJ7+BGqZX2FxNYqWe7NTF0Aj/kUq6drUvXAleB7zje
	 TJasFQMoTidaeKnRfis+0vAhSuznnGoiiW4rHfbGSoNyfjCV5736FcUg6bp+97wFxL
	 fCnUy3h36JsFRePpWrOgIwNT/e5pGE+cnKoOwoczzk9l0zN/HigLTgmVGyxBITVOUj
	 0pLXbXxCe/XgICiUXMd7+Yf06aKoucgUtZP/CSZuQK0gorBbEf6CjPU/W1PUcGMSaS
	 ZfPrBeu1nIrgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2469C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 17:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168391230580.31732.9957346120674473548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd625917ab33b47d994e123e525a5356958301df49ceb039fd546841608229ac
Date: Fri, 12 May 2023 17:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683912305
