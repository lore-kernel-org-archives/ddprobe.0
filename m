Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9D7EBE
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 03:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12E6C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 03:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681011665;
	bh=qkNjwy45zs6H8l0xev5TEls55W9aVECkQl3z+xJqoWM=;
	h=To:Subject:From:Date:From;
	b=fbJlpfxn+pOKHcuGCqsFyIPqB6bDwTDTU1xMjrLA3dnX5OY6drcbaROQaAowQki7h
	 88U6jUyMLOsag5Q66YXqHGcwb1jciMk097v3vRGcnyIH4fKxqrj26DGYcgQUSsgcxO
	 E11Q/4VBB+/Pqqxyth36/fHxuT68VMys+L04mbosoz6rKJF2rPOK0URY8xxYJtlr5o
	 ebcDWb+ow9ofYb75vL1KoiOM8n5bU5/ZTtIigX7ig4hXu0Nhw6G6hrEkCg8QBV82h3
	 Jc1ZAIEFvkQ9OGyAKjVolJ862W8PwLvWGeNKSDRAhSFOcR8N27dnwSfhxn/rVl2f/c
	 B0ALDYn0hSg2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAD24C761A6
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 03:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168101166573.13320.29351139532185944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8057126963647ca231d0285e514b274fcf2238da5da6f50d3d88095bc81b37f3
Date: Sun, 09 Apr 2023 03:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681011665
