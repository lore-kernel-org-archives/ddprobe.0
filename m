Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7E8C127
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNbittzi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA14C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699340296;
	bh=5MRIci3Ew0jRQqPWZSTkkB/TPzuZqJkEMXhWHqfUATI=;
	h=To:Subject:From:Date:From;
	b=MNbittziu1ED496ySEUjrQYN35b7q0yq7w3N1py0Ol3qP5yn6NXSIhD+bTKDItk3V
	 oBAKtpe5kBBaPfg+JGMYmLJ4T9kRXu9LKMRgb1oYhqaGYZx/4/uDwIYwR9+dtsExCh
	 g6uFT1qigC5gJFTnkh0Oyq4iApyKhDoLxuJysQ8kA+1RTJF8HhFhdQoqpu01dAq70v
	 TueqTlR+ZJhbF5sbXIfePksnk+LjDry0/j4/H8XrqtaPolO2ea0aK+06/iwLzo0e7d
	 ++Mhu70Ndv39w3zNEMRWOYsfE/UlbBX1uo0eOxpSXazsMseKEw1Y3FaV9a/oA9FULO
	 eY9yoCWUPoLdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EF1C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934029641.29643.11599521037327704186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6733f7c9f648be8f848349c6a3237222d5a1632ad595371ebb9b0e1520803ea3
Date: Tue, 07 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699340296
