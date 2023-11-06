Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B7F642
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJ6f1Z4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AFB6C433C7
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699252696;
	bh=bBBJhXQ5TOghORgLQAOh62p0O9A0cS4juZ7lNOuznLI=;
	h=To:Subject:From:Date:From;
	b=pJ6f1Z4xGh0M9Qbs8BfvmrBMR+VikX7dFO1sr4TDYnfqdHTAr1E3GcrQn5PZ4d7Ga
	 aINwUOu3DtM+h8gcGcDalrDcwUoUYq61UnvctFJtKss0WwtM9uGzIVXe923il0IG5Q
	 G/yzric3h6WcS02kakLdki5uHPL/kjbmEgoEYl5lr1M0io9CJMuOTjGcEGD8F6rFGP
	 IWtJ1zbUTir+3l8R+A09BvI+GKBdJpiFr9MlvLjdmeWuyrYry3yFGwwsROQUgsJeRb
	 b+V9tOJm1pJFrlVjepOuDshAh20wWRcBLQfGoR7DuOIjogNvle/A0I78ar1JiUQu04
	 lANq/YdOueF4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E3BFC4332F
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169925269637.13178.18415456911401756262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57bd259d8a7836f29d0e78955c23ae6b6e9a2c3dc950e8085dee9efb7eb45d6c
Date: Mon, 06 Nov 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699252696
