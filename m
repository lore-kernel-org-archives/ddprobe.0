Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD402539F
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC51C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662549653;
	bh=NIRyX/cgdoux7CvGzwpksThJcuCezFGAjB6nJR/jvVs=;
	h=To:Subject:From:Date:From;
	b=LbmIfUBei2QHjqSN58Gw20t5T7E333xMZMSmuTVanghoaf/z1PatltrpOM15tHqKJ
	 8dGlXISSF1wPxkMyKuOKI2gKQrFp8g3jE/gdRqsjI4XRQzRmUpBwE6uO/tS2aySAdb
	 g2Y2DzgYANTH8Ao7LpPVP31OpPY4uJvjHe67GPjgspmU8lDfz44Fwxs6tS/p9gJQoo
	 BsstoFRK/zUP+r+pi1C7v0hTy8qtq4Pk1pC6fg0W20LIkpnlU/EGc2azltBJ9Y8ueC
	 K6DLVYeCK+aMKJ1IajvFd/yXD1dUhM57X0IBUSU45PFIVcO8fdE2WKuUHT0M8u9QBP
	 FcUWX/dN2AOtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 587D1C38145
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166254965335.4180.4575360366640703738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6e16dd1defa94ac2bec34e6f34e9998f8e038e1eb82e8ffcb11b33df873f02b
Date: Wed, 07 Sep 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662549653
