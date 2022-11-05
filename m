Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C95C5185B
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B19C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667625654;
	bh=Rsd8oMK/ZfqgZFe5LP2TJwsWj8hNgjO31xy3n5BzVRw=;
	h=To:Subject:From:Date:From;
	b=PhqxiQ04Za9XmetNnJMyARpej4pAWGxXCO/kNMmGrVbqgLd3jV0qHjyH9Gq7Sjxp0
	 6/b0cX8ajpWM5FFl8Jrb7sF0Mpex4AhNnmsOcGVqQv248+kGbBN7jZD9mcFJ1slq+l
	 4HdWa2+HLgfcjYgwShC8m3P5nVx/KuKNrdH+rLkbvZlpTF0tgtX5dmc8WZMZlWxLuk
	 +vqzXMbLZdqO1TXpYc+Mc/wAT024sTTH6UMO4vm0yoxGNaxwXOkPCN94jC1uuQ2VHw
	 tg68EM70H34S1FMSXL+qm+Y8weyQ9zOc3pm2kh6xaJyX3gBPngYyPm9ymYVmfD5NOZ
	 PP7H/kfAzeOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C168C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166762565433.4391.18009129493789374862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c228845b6b77fe50a4fd56ee5d5da8b9e37530b7e85799b01fa84f3acc3fdde
Date: Sat, 05 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667625654
