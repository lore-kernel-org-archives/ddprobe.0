Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD3881FBA
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FEE3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665513653;
	bh=UDg+H/ftq4DZLRZXeYahNOqhd4FnxB4FKD5ciBHNTzU=;
	h=To:Subject:From:Date:From;
	b=KzOgQlCt131IA3Rtv9s6aPliZl2SeqFS8qBUDx+28D+l1XZyquNfi3F8yKrpuDF2U
	 uqvdUY7zzeeMlk1yqC72bw3d8Ip7RaGZk+GVDKH4QnmqMuF3/41O0X2AuyPW/rUfUR
	 fKT7ZhflFFZusjOxVPDJR5TMg3Yez3i1iQT1X2+cPkOCAOrijTGtII8rCgOxEhHvzn
	 69asil2vMETChtktecGhFQ3Clatey/Y+x/vLRdFI9UMGqFr7lAh53Qx06hhVAtVuQt
	 UFdD64O9WY2DpXMSf7PBiG6UZBmP0sqEZETKrh2q1/6tnpoTpw6lIgJWQNKDfzEwDi
	 E+8PIY1IVKEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55D50C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551365334.11004.10011295510416159259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 623ee036b19311dd265ce086b757b49741f4e99ebad1ecee169f8b435d9daf98
Date: Tue, 11 Oct 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665513653
