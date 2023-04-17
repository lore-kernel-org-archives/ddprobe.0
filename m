Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E931AD2D
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC75AC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:49:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681768145;
	bh=USFGVf5Kii88YtGjYkJ/NCOyykCpDorgeIv70lZCeJY=;
	h=To:Subject:From:Date:From;
	b=TnPwCdlXrnypOJ9iUL9g2zf5J/Md33p0KAqWr18rKG9qXPqXW4+1wY3/dxXX4VDH/
	 AzWOMWcIh+VWsNE5QvU01t3gqWAuyITZD3jRBhcVqLuaCujZoY77GIFPOCvuFwEw3V
	 Ne70jumd97H6IiLFsg0OlGyjSNOg5ss43p+aIDr8m7a5CpnMHZ1lOgr2sunwtpddGo
	 Qq4BAXO2bmpi1Y310rJuQreHjKBu75CVe4EvBlXXK8A3/qUYA/8vPnT96oDhsmEeKX
	 aVvuOLuD/i1BDJx+S8BqfF9dsqeVbm1B1VZlqKK/Gd9Q6rgUzVPWPbfdC+jTcPW4qK
	 RaAoCbKGr5gkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA901C77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 21:49:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168176814574.4574.3251777960716740066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d3dfac43b52e68a7df0c383a28f1a5d0c4c17fe3a8df4995e328d773c4284c
Date: Mon, 17 Apr 2023 21:49:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681768145
