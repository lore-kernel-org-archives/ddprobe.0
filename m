Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F016D24
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 06:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGWKVuhi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9373FC433C8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 06:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698215896;
	bh=9ZY964mX7DjCWgjuYn9K4JYRuWfIvgm5QELrvQ2WJCo=;
	h=To:Subject:From:Date:From;
	b=NGWKVuhiS2Wi6er5l53zzvNiQjILMfMTwDxlon6JHPwQJ6Jm34i+W2XMaPRXR0L+G
	 oIX+aM7R5ptkq+/xGFe6lTQ7Qw4Cc2zrfh4Tw79sOySqlRfazcJ5I5eTW5F0IOVfea
	 qbh0+a2JxZqdZNhZpZvG17/aYKOPV+4vrbpI438QZLjdgRwXa5NgdLOl4y+ACugFkf
	 wTHnCjrznGLQ1xc63Vu14sSAnvlgzqj8Zgw2gHGI3mgFRBoaP7eUc/L8g+2Ub0FX7J
	 OTvliKW83N/DXZiQiusOKRZXX6LFAXBrlP2C5TD0nb1vbbpoErQEnOH3D/PF0TRSOR
	 CnbKVA4JMdB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7716DC25B47
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 06:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169821589647.19264.177851844812831879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1b695e4ef0f7a83baaa539addf01eb40b21ba582893209c7015f68cf1452f8
Date: Wed, 25 Oct 2023 06:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698215896
