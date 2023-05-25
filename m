Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5DE168BA
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 17:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB95DC433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 17:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685036105;
	bh=M+/1ileb2fzdTBUpGsmopdPYOChHZbrfi/aEERkh96w=;
	h=To:Subject:From:Date:From;
	b=Ct/I2ULc5xpzNff+Ryik7iOwxQdYCHhsVW8xw3CdiHeWIg1BheR1b6ACLSmMZTIK5
	 32CS6ST2b5U/y/w34h9cHhgnxmkfFkldDs8A7T/uYYXFZA/89Imd2KV7u4hvkTyZqE
	 +uyeM1WW8lG7PzxEZ4Ju6J4rgQs+QZZdvRCCDtLFB2mZJ8T94XAsjg70pVuZLfV3dT
	 961hYDGIz0oSarPH8o7iX4S4ohpATTHrEKELrg9knBe5fdXg1i/JR2vCQnlcUlr45s
	 Jvc7fxnIzDVhJnpmivGGgtM18XgWIwripfTBqLG3AKKI5w+Pri/2HMVWitj19pHwMr
	 mWneSmKFie7Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D84C7EE29
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 17:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168503610577.3449.3553116718622594719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84a833e7188dd39990b5fabc3fb2876e669547d7b91231f326df6c867045dbfb
Date: Thu, 25 May 2023 17:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685036105
