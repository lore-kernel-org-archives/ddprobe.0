Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3D915384
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DC63C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661554852;
	bh=8C45dDFC26xxuUzCCKwYMl6GmKRPThcKy5FFhDIextk=;
	h=To:Subject:From:Date:From;
	b=rGq+5+Cps+cbiWrUvJJoyTqk2O1TSo6mk/EB2T9ipoZz3JskQdoYQmJGxSTQdpyDj
	 YRXebOHYOuuj+jQoviL0FlEjZzvcE49qx4V/ILT14jB/YP3eSFxodxRoJ7yffJ8Xhe
	 ZXQljiu65bDKZ+ipF1dUvR2JG6dvIJojtqeNhv+NLv98vXSatUypO2H14JUzfaIO7s
	 ciLDYO0uvOHTb24pB/NYGn0K+2WNHxFLj2tgwZoHz2vtUoftHaqQvotsY2WWV8Jg91
	 i4EQp3ihJoh22ZbTXWKlx/PaskNuL9tbU+KKMUDxP7+Ikwoc+uDtQQuVVdbPcR8aCr
	 dtKYu8AIVu/cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EA1ECAAD4
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 23:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155485240.26851.3955830824468510272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1324e2f0389a7f0d3955bd0f98cc9968115dc5f22e53971e0a7d7ebe59235e
Date: Fri, 26 Aug 2022 23:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661554852
