Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75037E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A706C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662511853;
	bh=SI6mKEGyDX3vJVsljajdZlBadYev6ETxWAAopganoZI=;
	h=To:Subject:From:Date:From;
	b=rf9pPMpOWEKY20h8FtCn+y35N0yA9PpfDzJk7P8SuhrTD/TiVtTt/GfMXtbUOoa54
	 wZ8J2rE2wrZB0pobOU+k62u1IJrIutv1TmZ+SwEjCHvsoUCvtQwckgLvE5HMC9Mt8Q
	 HN2KcYTaYqE6sMKf93+qhXaV/uHA2jidrBhcGDxX2+bKr1DmYBfSW3J6cMmaaEhv36
	 CAJq5NkAnt0HCP7v9jXTncC6yWIVKN9yUNdCRdOUSNpAQCDNX//wc7teZUknU6lNNQ
	 bxyUrHflG6Dipimb7rQR7Fqp+15mQgJR5BwZ4+Bws8EZ5ytOSBBY7OYtWAdF+cb4Q4
	 ZnJxoWjoE9jxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50761C6FA83
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251185332.26049.18270571755858507244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d909e2bdf4761090a94b67599eef30d45de1124e04c63da847ec7c1d0c1473f
Date: Wed, 07 Sep 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662511853
