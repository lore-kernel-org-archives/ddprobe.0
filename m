Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7AE6C6D1
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="al6DIykg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79F28C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702595896;
	bh=1Q1T0WmDQjXty1c+zpbFXDEQwPFIEyaw6ZGkVzowG7s=;
	h=To:Subject:From:Date:From;
	b=al6DIykgXdp1R1maoOKcJdVQ0Y9IyMV+rMZNV7yTSqnCfLI07AfRukXMMtCB/s1Ac
	 LlzGOQqlVUMXKd6t/DXjSDpnoNXX23LsCS+1k9/Wl8V+7k8/TpNZ+JlOAAWxAmTYMl
	 N7rTvaKFJVzvoiRlmC+jTh0HILaJagxhiS8xdSn1Dsg0R+5UKHySCS1PnLDrvp39VT
	 E15/jCOe2t8y/dbNM0t3QoLQClfK62w+b83QuloWKN/HUNagQik4CbA00Wq3bWpcNg
	 SALkpyFGYLgg8OAotv75HKZ9XdRjxKZS6WZMLhBv6HS17JaVzPUDqvySlL+BqkAbmp
	 dlXOOuf5nDyvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0D7C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 23:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170259589637.8154.2785527729792511807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed2379563aee4c38d35b0f31a6f48c255a9a05b53c286cf5b8d9c061ea53a741
Date: Thu, 14 Dec 2023 23:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702595896
