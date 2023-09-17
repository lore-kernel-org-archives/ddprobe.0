Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643C71FB2
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 08:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4949C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 08:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694940308;
	bh=L7FNS66yaMNBfNClLN0KM8GhIPRJgaHutlqDhfGpFls=;
	h=To:Subject:From:Date:From;
	b=D64Mw63rMQfHhSUtNdDwxkMqEh25Uz40+QXJfShnZetXhGRWr65/COOc86jWAGaJw
	 JkQUVTRUkBi2REMeYa6lSR0IsarEzA0pwKl8UfW+/NrqFReUJZ+m3r9ocHDjskPyAE
	 acluBgpNYOZwHljwMb0LznsQBHWrJUjvUNNPPK6csc2SU382q2NWR/AEamuKIMNZ0V
	 XK1VfUhwkX6+x685zS6+EUz6xzC1YJ3xQPfSwaDbg1ml40kLltfW21mhIz9+ktKd5y
	 Z438HNlToidxvWHuzkFFVcU2ClKmtEbqdQcHWbZNTKj6c54sULJl7E7zH25Pn5Kxhb
	 WvSisnKacXEKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5F6ACD37B4
	for <ddprobe@lists.linux.dev>; Sun, 17 Sep 2023 08:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169494030865.12911.8648630932435948976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12250bdb8d7d33c8db96193db4c62b3a25f550988ddbd46b3d9d97d953112cc5
Date: Sun, 17 Sep 2023 08:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694940308
