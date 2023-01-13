Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69FF2115
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 817B3C433EF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673634687;
	bh=zrFOkEwSiTJVoVrKO4sKCaEOH+lGJIVnl8Feaajr4L0=;
	h=To:Subject:From:Date:From;
	b=UCCxmrYreLnJX+Li7gPC1+4PuiYjiCMoWBGUlfRa7+9hwHL9wPJrrTxNk7E4yDvDi
	 xTgL7gF8TQwACvVDBxanqxaGPzkt4+j/Tf/byQwq+So7YQ8ZB2zcBMUThrQOpNqdjg
	 Na2QHnVvGRneamLnhhY6OgOrrv/3SIFHCIDXsom8RErHLG8cybwzykkl9HpgqCUfJB
	 qSWEgS0uSheNw98dMU8sGfxaiZC/09U1ofRl6FDKjB20l/1x/3FKE5R7+HTqChjOSn
	 g9M7LLiLynEnrJhGKkq8rBCm1b7QBY0v/b2+bF/w4U5mNxroGldUbNj7QeW91Fxc3Y
	 Zr0ImI7vfG0RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6857CC3DA78
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363468741.12994.5988691703767130440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c001ca88ce09753f1eca5a096082409c00b664e854b52fc48206b974643e8a1
Date: Fri, 13 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673634687
