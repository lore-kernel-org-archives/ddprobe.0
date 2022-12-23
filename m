Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3D8615BC
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89358C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671772287;
	bh=tYQ3ZK5fDTRTQ70YD8RiyANiWcKpE/jOG7i1NDR9bS0=;
	h=To:Subject:From:Date:From;
	b=ioDmWNNwGYEeXTF7t19jgvLBKy+ufJSkBFw7EZD5uaR0TklxSWlkPmozRlSvjElpt
	 T4bqdWYOIBNV5GOWBFoPogtwc6DYVPecJlAaxyhs/p+f1yJg8Sn7mw+airCdcV1Je2
	 sENUHoQFJqGacrmTHf7FpWGVZy29FBi9h/9x8woEl3aDMwxqutzE4fclKLltwdfeJS
	 md2IHa0HYMCfEeZQe8hSN71/8IKEDUcKajHYN5zOErHUawU8RcbEiZmuStriUZjh59
	 Hw20UwVBSZPk+zYwo5O64yG07qj0GnlzmoLeX7rn4DyAjZp10JMLXEfZ+PUGVH+sdg
	 zhTNLAWx7k4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A33DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 05:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167177228741.1037.12596305673751561802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf3a4c3f6ec7f244418b8254300210be80708f88f79991e0194551f4a98dd72
Date: Fri, 23 Dec 2022 05:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671772287
