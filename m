Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D61802F2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D14DC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672587687;
	bh=Xig/6Nu6mylRlge5ZDeEbyjOBgWPsDJSKnmTxhdKnes=;
	h=To:Subject:From:Date:From;
	b=EI6+wMIxz9CZMmiVASG0tKDTOGwO1tZImuwbmhwK/aENIScHsGgvEtEucu6CTvnvZ
	 uhkZK9ccv3B7BUvqQie1vsqs4x6VGZWOJ5Pa8fVVtBoWGYSvQisuSc04mF/35Q3c7o
	 IszNkPuY0GqQ4RMHFVjcku5MY+Alzm5QjVtMe7/BMVpltnUtBA4VohvfU2XxfcwWmC
	 E6f5elkaDc9TSk8n6ALxWJa9kwW5YP55U8zJjx/AgLSVBqALvBLU658aWZ/XUzDGzM
	 gOZbMXTc5n1B4DLOlZ0cmmFtxjCUlYerUnPgT1QLT4VTHhJNdtrK7XDsXl0WzKc51J
	 WC/nt+nYtSu1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 616E9C4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 15:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167258768739.20014.5568195677621543958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e98cfd0e87978ce8dbc3ea530cb7acf7fbcff1b55e0417d5f2847695d87959a9
Date: Sun, 01 Jan 2023 15:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672587687
