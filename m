Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84639186B
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 18:51:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF15C433C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 18:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689447068;
	bh=0xe3/ktOk8VKFw2iezQZZexrL+g/IlMWa7wItv5qm6U=;
	h=To:Subject:From:Date:From;
	b=gzvCZ16HPdA6c22pPITccGlhMzHmLi4uoBFKNVVij92VaXqIqoOBCDbrhK3Tzsna3
	 lHIcDRnBbZ7FTLH9RhkXrDNUOCriONcb/GxDmyGJBoLDkkphBDdtAIGB2XO45uplcA
	 IvDvydoh1ZfxKgovZbPcChsFJaCQnjB6b4H/udzrIz2x4ZPSuK/tbd2uzqf69Yhy/S
	 FA9TFL+WxHzLfL8+0qFTAh/+bHb5Rf1ZfGUZZojFCOhcxypiQz62Od6Fxryn8YPoLG
	 OQ/pCKbWzxj6v2WNtzMEc2IsdHZ5LNRB+I9xq4Ltq/eyP31LbH2cvY46wA0BynBnvS
	 ZGqAlLVc5CDzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD8BC0015E
	for <ddprobe@lists.linux.dev>; Sat, 15 Jul 2023 18:51:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168944706866.16032.9282095377477107281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 084b71d2c35976ab58d4237d96b78a17c1e117b178085f48eb37d9d07826baa9
Date: Sat, 15 Jul 2023 18:51:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689447068
