Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E741FCF
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WRF0kcfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A14C433C7
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696927628;
	bh=dsJI57jXfEgQKjACc5AurN7Sx+rPT+7XEaA4SP1c/iU=;
	h=To:Subject:From:Date:From;
	b=WRF0kcfQ2uEBl+D8ElAwPDM8QrAhi+BAdOaLqPnBQ0iBEL7+5Qg+0K3GaI+FZrrzb
	 1m/n0zS3fE6HO6Pnn7EEnDatvsYfIYZub3O4qTeZGouOVsmuIyMcdiIUVtSeOYyFRv
	 JfwipfX7N8jKrUhXfzzvRKfsjeJ1+jwle2jl5E5NWqD01uooTlBIZtw0lN37FbLst+
	 shCwr3oOG6EYtKGGm+Gn5G9aVkssSl/ERSePiy8DpKcagOlPOArYRaTn+rJebv/kMA
	 q6cUBDhhX291lf7y45fKZ9W2FN6PZ6dvjZbWpH2X6UJpvCEEXkhL76vPQmY/JmPI4f
	 sh9WxYXkgV5xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DB0CD690B
	for <ddprobe@lists.linux.dev>; Tue, 10 Oct 2023 08:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169692762868.390.2002265721276381064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7bfefecdb361d535f450d17580b0dfd8f2fb9710a324974b46038956a761515
Date: Tue, 10 Oct 2023 08:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696927628
