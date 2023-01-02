Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD7D05667
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82E92C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672681887;
	bh=mQ5SlymWEg1S50FuCMH9bcFa1rj5iK0NKLfKzuieVeo=;
	h=To:Subject:From:Date:From;
	b=LuzSYQQsKOluqr1JZFNJOCclkES+Z6fd0z9DjW7PSfdPE1zRXHU6/+CfGb+/nrbKJ
	 jnlV5JVPvQAdsHxQy/jQyLWiNYpSCORRxKIjlmRkVF7tfcMB2c0GCBOGlOucX6cddI
	 hTw6i+i37wPsoCtfCKJ7mFmMU1bV69w63PhgOkO2dL2lBVngjHDy+KP6Wbzkr4rFAY
	 QKo2XhedTPi/3Uf5F7Ngk5xAPOuq6KhgtxjemK7b3jm91qTTatseEqzBIfRB76Zymj
	 9Bwnli5IWHFh+YZit/Waih5KzeBxb13xXZR0ydLT7RaUwGgmwCdR6JG8Ruda69z0gu
	 3MHF/NKenoElQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61AA9C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 17:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268188737.460.10457996375510626920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6ea4d8a7577ffbaf460c7ee887b87b609012e18ce06a873a3e9b06ce7a2259a
Date: Mon, 02 Jan 2023 17:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672681887
