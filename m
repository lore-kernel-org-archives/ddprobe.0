Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7717FA
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A987C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662814253;
	bh=3/1Nx1PDzGfsA9XxnEaKBQ0hAvf8rjo78ctLomt0g04=;
	h=To:Subject:From:Date:From;
	b=K3kcIHjhV7rKZswa0voygBy68Kyc9D8YBcetDhQEfEE/lL3Q3H3vgNI4MrGStFISL
	 dWKDqhNMjhRdyp+N6u0XJqTGCVzIMpEVPW+T85WJtZOi8yJ7/wKs++X8H1tXCZQHZq
	 pi3JF4xHhbFwE3S2hSG2nmVcckGewIn2oEVbQ62F2Lp3zcB2t7DK0xrnJj4WBkLf6s
	 aQoE0uK2fQmDfqYHfxJ2xDZpzTERNjhAs/hgkcqKe8w7a6AyWxr3CcKtd2LTrPzTUk
	 2mPZ8/XUrhcd8ED+O2YJLMKfhPOpd5dRHlpwx7DiY1K7791in9VAgF3u3/Unx+CHeI
	 aXPqKvk6i+wQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538C9C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 12:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166281425333.6311.12560421487741859311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45ecba49315142048da7632fa422a4a38974bd6c0121eae9841f5be2dbe4c71
Date: Sat, 10 Sep 2022 12:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662814253
