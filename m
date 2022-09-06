Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8557E
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A314C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662450653;
	bh=sHNIbSPH/g2eW+s73LdZxjNcUT/cZk+1667xNUkNuaU=;
	h=To:Subject:From:Date:From;
	b=FoViedxAm0KThMTAKqPV1q/snqiutTKlwf2jGf1Le3gYlnGpRHQZP7/DK+8rzoZx3
	 IDiqyVpVscIuxottIY1EiftRWsVHy7T8B8pY+pffDIqvtEY70DoVXquR6IaIsR9K/L
	 6rMBGfPPawLuaE+bfpVyngJ5PNlVHQ8u2hNnhNyArlh+xoMmXB2WNd5c9u/zwJ+Brt
	 kyo4wgNRY+ponLB/dtSs/0hMfYEDi9jn12uDZZGWn9x3krzhxr7Xj1MzBgYcySeScG
	 Idopk1uw2oiBotSA891bdgUFhbGwSam7BCfYw/6HzfEVkJOCPuMIBqtfXc/IpjlewC
	 MYPOz9OYz/Fkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF33C38145
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166245065342.18296.13073695007362518020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7dd0b79bc8e14671bbce060503100e9993427ef2f245814803029c999f11aa7f
Date: Tue, 06 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662450653
