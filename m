Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7277E
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:50:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DA6C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679640605;
	bh=EfoD0VZ7Txg+BAO9maFWn6N92Kj6OeDHbSnwP6zUgLs=;
	h=To:Subject:From:Date:From;
	b=G2PZajCtD9MGr9Kd3RCXTb2teshyuFfjHD4DI8s79b1wgUMDeeY+d65pNyH+0k4+r
	 CY+Cie2oyzSrngCjgGfabjaAOXkObfQvtV3vPSkbQA93B/owCpzpKwjypYwgXzG3L7
	 8hSG7/1g0RsROl9IiO/g0mv1re446skhy8YuuXxmUbTzIE9oYGCNkBDVWxWJy0Ks1v
	 nbiSU7ByRZC1NcwoRlIGseKseI91PpFohld86VhGuq/PHi1c+axeb2hkGqiWToiqkb
	 GytntnDk/vQqHcarqvAiucIXKUjaPcH725QFVvRnEqmxAWauGMxU0OM+YQGAJufalN
	 wNRqjXanaIXQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA0C0C6FD20
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 06:50:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167964060574.12317.13848290739534877269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d67969d6651d31e1e71c83c15701a5832014a314dc3642975e70716ade5045
Date: Fri, 24 Mar 2023 06:50:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679640605
