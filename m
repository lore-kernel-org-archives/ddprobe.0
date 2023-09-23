Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734ACDF42
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 15:35:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC36CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 15:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695483308;
	bh=95V6f4KWWFosmOO6iUK0gOa667tTL/3+DxhhFdFcTNI=;
	h=To:Subject:From:Date:From;
	b=CtGchH5K6F+pIq8zRhydcO/OHpgMWK8mqXbJjRjuiFikdrxg7Y2E29cvf/2FJrHFL
	 E3NgVeZrLc6XGjrSV4UJL3herJCONMfehOOuoRQpIO7+qxKvt/Pzddi55PvVs3voyN
	 bjAvo8owhapwGGvv0iG+BElVVqM1NFkRfxwkuFH7JKuSZdUrrkkDaJsjBwUNd9qO2h
	 STn45wNFkJnZGDlVkCk7eJLSmP00ga/9a0FEtc05eckNvbhj7bqyPaIrEP1vGtpcvo
	 CUlqCxRattXo8TH6bWXdSTgS3Ewd5RkOrcZjRbkoHOixXg1NEowtk7YRK0dXYtwC52
	 Xl0o1LiOQcYGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C461BCE7A89
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 15:35:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169548330876.29794.9492826385760263998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5097357d5df5ac08469b18f36bbd03ade2d30267a6cb018354cbc54e8dc3c37d
Date: Sat, 23 Sep 2023 15:35:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695483308
