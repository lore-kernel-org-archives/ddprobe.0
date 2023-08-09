Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFE82452C
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6F70C433C7
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691621588;
	bh=zEhtzafC/GmCVElhF9Jm+nO1qxMXwP6YPttwwlx+Ygw=;
	h=To:Subject:From:Date:From;
	b=e0qotIC3cMjba2Q6sQ5u44Nk2a2f33F3rxWkMKxJy8JHiySn7KkA0q2GLncyLZrJ7
	 AjAT4dr/SRRot8x6v1xa/+DAXMKlmkqrVXqA2FODayNfbTAdzvGskDdMjKWivmjDu8
	 Q6/CxnpPPfxJBJ5mDtji8Z2BlNOw7cUqA3vPT5IAcH8pEF4r0fW2fkQxmhLDLdLOEW
	 cqGbfaYEus+VCrhXzyufoWalqRJJenfBpjnkVCO80ti+NcaCLU9w42ISbgh20OQg0T
	 aQilXspzlz/Pug4bCU4n7pWqzyVJ0EJ8Ca5z/S+6z7Zl36UmBl4I2+5jp4a78f8Bku
	 sTHLsznFT1XYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82FFC0015E
	for <ddprobe@lists.linux.dev>; Wed,  9 Aug 2023 22:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169162158874.584.5868148921711144581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2dd5f1fa71680257e6afe255bba117c8eb5706307b1ce375573b94f17b0adb
Date: Wed, 09 Aug 2023 22:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691621588
