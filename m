Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6DBF1367
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E29DC433D7
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666565453;
	bh=2L4K6rk9cHhlTM7ujrQ5cTIHcuy3LIdkRwb3tUO10lI=;
	h=To:Subject:From:Date:From;
	b=LG9X6nUTiNLSHZcbnSs5DGpMiFfOvosrops6D+0OJ9NfuDttZHKUD3gsUsY1drfNA
	 qmc+AqQoo4TrG9+DJS+3/4caAUzmMVYS+tmlhx8Qb7f5ZovsOvFpoaoiXpSWZIjxKA
	 tbXjZCYlIsU8mhhoMjIs7cnM4sEoIjREiV6x/s0lttNdEOhbS95qvdfamdWL7nnzvk
	 J/2mfmRGJfGvArKQ9qNW2UGY52gbr4f7HMrfpXnl3eVV63qAKkMOjJ8nUV/3ZUBOKN
	 L1nKlIzGXuzLLgUttOpyMeZzhHwEM8jpKMCxqVXvvREhJjxKWF9N+UlZL6zLUc423/
	 PnFa4VD7GoI5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A28C3A59D
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 22:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166656545331.26717.8407903642331653825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14f5ad3d7de5c740bb08b01451e1d2a0f38c7606c50855a7e00c9953c2db3882
Date: Sun, 23 Oct 2022 22:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666565453
