Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C43EA320C
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750BCC433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668208254;
	bh=BVcFzv5jsfdP2frnGqRPtmTeTbRj9YdFftuG2aMIaYA=;
	h=To:Subject:From:Date:From;
	b=u0F7R6f4wymcgQISrpXYuxaHCOIz+HUzqlKRJEKrzO6WCYj429gAXDhLInhGIQN55
	 k7SFIjb0njIRe6wC3fGH1ufLkczhlojx0REhYUve0oTuSv+2Yfer98aWDniCgxNPSX
	 UbIhPDmya6X+SbxRizUnh5HL1DNmR9bdVjKI4tml9cz276e0ILVO3Nj6IckyAuSLyD
	 dfx9fd3yR8e9hKaJWsu+qtqzLjIiWoO8PYk87ifuvsCNPJvxHdN6Ao/JYrgdZ6n+ZI
	 9Gw2zkgBpMj2NfXl9ZFnlqJt1/RQHqj8WEi978/u3D2lJ+Nxl5CfZb5ealOR1tB99l
	 ZST8OjsQszXZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA0CC433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 23:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820825436.18599.8227352767101957722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e08d74cd21fa3b7301e8121d0278704c6ca2deff7484944dea0e8672ecaf47a
Date: Fri, 11 Nov 2022 23:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668208254
