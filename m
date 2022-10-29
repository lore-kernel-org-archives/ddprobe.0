Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA8D115CB3
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80575C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667040054;
	bh=z71aGh4L/pT0kNwTgflQ36hpzDCS/LDUU7Hkz9o2894=;
	h=To:Subject:From:Date:From;
	b=X5dXrPQCxvSb2fwcIvfyDBw40CXT8ZJfKp1R1kxbReUyrhR6TkRTWGKZcvsbKQuIZ
	 YFFIwCX/K94kEdOJmgygYcIbwdjexjD0n/BXfvi4kL16w9dSUfkNh0v19KZk5m4G41
	 qEPsXbJSHxYTMhfB4RYMguz5fa3SnweAh0pZdEEysXGMOvxqBaMn76zob8NGc36yvj
	 xKPixJuK87sSkyjrM82e+M1Ux0FbGPAqbsUEzToFN8fyZ1UN6i3b9WTlC40v8/2GrP
	 2hdvMowalruY8ZBzrvZk8CcgX1SotvMmylwxU6oWDEC+E+rGqwiF9avIr0fS9R2kEO
	 FTSYUOH8YDKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D8B1C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 10:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704005437.2551.7284277673742137737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c897a95f97d7085fecc2f9300b0ebacacfb1740c2b12b0984dc89e258cdbdde
Date: Sat, 29 Oct 2022 10:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667040054
