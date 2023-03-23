Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A0B15B4
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 01:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC91C433EF
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 01:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679533745;
	bh=y74ymz9K/DsplILiHanrigdWmpw0AEDCduNn7ntgb3I=;
	h=To:Subject:From:Date:From;
	b=K7xdeMeaG2U8o07j2dDvtn2N3A2RNUDCP6URAU16jX+EbT+Lqqftlh4F1pH/USIlv
	 U4fDUlKQk2to88rYMuBdcIavRND3N6pUcj0VNzGfCk5cTj8EbVwQ+QEk2BXeEbTeas
	 uaey9FvbDDzs/kDArkW2kGUvmxIXa5eFCjmLcPlbGHjvEBxtpKEx3YE267BmW8CoJs
	 RlGP73CDqOI7iiwnQxYcpo0XZuBmhT4tH++UyoR0u5L0u6ubTN1Qx17mPzpXTVUGZK
	 t3y5FGVwubSlWmUcVaU+kPpoBhfUllilqOtmG7ZOLuAjtSc1DyE1G5960Vsl0NMJcX
	 iHjS/+lb/4QSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C514EC6FD1C
	for <ddprobe@lists.linux.dev>; Thu, 23 Mar 2023 01:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167953374579.6941.10119189051532085871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaf47832c4839d1a3ef755c7db4bbd54055e9e8b01aef8b99e5c26ec1fd5e994
Date: Thu, 23 Mar 2023 01:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679533745
