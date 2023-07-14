Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565564C7D
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB0F2C433C7
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689351068;
	bh=ZrnwmqRdmQqTo0lXcFC5Kod+XfQDF8PxQfdgGHkEbJU=;
	h=To:Subject:From:Date:From;
	b=h2Sjx/Zssz/aMSNxbzBGYzWTFwKPJYy7nZzH4WyOLdVjRZ+oMdNc1GTnf7xC0U/VF
	 iErOHIverz3gkd3WEfXQGpUygHmx95a7EoYiMls8poMTZTPZEDUQN4Le0677zQy7oP
	 1SsYwGEvZ+rWOg3y9ssLnmesFa88qjFkMFxAwwunLtWftwpx2Ftzwn2KoV5TrQ/fwT
	 52vPmpHODdEODusM2BOL5Sye3A4y0aHikq4beiXZWkwQno7zM9Ztn9u43MW4qLWXW5
	 PzlwKvFMw0M1QGAvVcgZlznTFccxoWFXRdvsDMpcnbAASFqQu+kspVGjJebGWUuLEi
	 +lu/Y+2dCdHLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B130BC001B0
	for <ddprobe@lists.linux.dev>; Fri, 14 Jul 2023 16:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168935106871.29437.2185376087432684960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffb6f9d4b23600bb1361203e275395f076b6087629c68e08bf1f38b4e40f6b39
Date: Fri, 14 Jul 2023 16:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689351068
