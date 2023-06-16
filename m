Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6519DECB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFBBC433C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686947948;
	bh=wDbcx4zfnsHwEEk30b4gfAP7FzRdMrLcj8LV3WbHBi4=;
	h=To:Subject:From:Date:From;
	b=R+ZmGqnGvlDX8LGmw7uq46D6vauayS1nN3NdXF3m2jF+g0ESpNREGU9EUAkPlulPY
	 bGvsW0UQAatEQT/U4RU9VD2f4y4lDNv/sL48fbhQ42AZeEz5ienb7IrEJ6LhwTDDyq
	 THNrBE4Isv/IdjiBGE1jM864nJ5SLMrpCCPRiNx59gvoX51rkD5j10bqgvJ1ijYMTl
	 KoSS9/qL7hflPB/wqbXmVClsp1pxGYURtTyqqK0PG6gNHHOwhFNhGwz86pZqlYVUbz
	 msAcq8Rnrk0LbSbLatewnD2ty4n07VIiMIepjDCLGExhVH1ZpnIcXRT96x3LaUmTjs
	 O1WgMHflTygNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3080EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168694794872.30716.17123413960119006587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f90b08c8019a9ea9e7c8bb4335b0ceb08e7352448666a608b490cc34402891
Date: Fri, 16 Jun 2023 20:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686947948
