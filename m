Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F19A1864
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 05:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E29B9C433EF
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 05:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680240065;
	bh=O1gSAe1CsP6QGfP+fywEyRpo4XGhHCvJEFOfIZgaw4s=;
	h=To:Subject:From:Date:From;
	b=ncILA13H2PEvN7+dA0bFYktb09w6DbOcRpGslM2KADJr3Mg5idIiPD+zlNIvu6+yI
	 6ou27rReFzz6XVU+YwrYtBStYVGHfLoehA/psoEDp9kFidE04vJZuAn/3T6Me+k5kU
	 0qL2SgHrw/qdf4YMkIT80pTQa0WsSHGC/lplmcJDaA9yagv4VPXul95hLhvRpbbs1l
	 hx/DhqaewO+eLPFljepeo7FTNm9zpkvOrSV9OOKI9k7QFrmEm1h6P52ofcBeCbn7TC
	 CagLve1Dy+fJnekNh32ZsIAeH2qrEJaxQgUYbklrWX2oGXkmWUgpEldvY3BX+7GY/Q
	 fyk3PLMsbIVSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C6AC6FD18
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 05:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168024006576.9020.18241183736913785363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0423fe4dabb20ac669fbfd337acbc89288a04867c17db7882423bfe3d5e34c2b
Date: Fri, 31 Mar 2023 05:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680240065
