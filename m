Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E805C2EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 19:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF1D3C433D2
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 19:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683314885;
	bh=pqXLJCuvKTJ5pukQal4JvhgLucFSIpSoDOIqYX/RGWs=;
	h=To:Subject:From:Date:From;
	b=nSE5DqBrhwtj85UXTcVbt7iMYAm7DyG+h4et+4ZSOm/qqOLk+L9vJSBky7sPSxT/Y
	 aBXKrJuWMy3znWjE2r855q+gCBAygoxwpET2XBAvUukCqd0VFoXLTA2IJBI3HNPCNX
	 VuLt8K9ktr83UY2DoCGhUOj+qtzfEeDZvpQC2PsaQHCKtmHbCKdoyuktfB3WgUyBab
	 Z4PVJ/i0PP7pL4UEdoLU2htPGCxy3RthBjVdFBj8tCf456w7WP9lk6NBKWp9KtsJPX
	 Ob48idQpQ1f9HA9E+Vuhecz+BYv3H1N/YCTTD065VT1WB4CnJNCJwZXwbWZQF6NOuP
	 vCPC1a0Tgag7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C56C77B7D
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 19:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168331488577.5662.2507448869622247112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdd0dda365310f6e8bfd1317ba97578614070b552962b246fdfc6a899d84ecd
Date: Fri, 05 May 2023 19:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683314885
