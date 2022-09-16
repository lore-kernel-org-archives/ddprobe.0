Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D136017F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82353C433D6
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663294253;
	bh=L8GmyoB0ErbuwHLvmU65pHlz+olQRkoCsVRBYsngYNY=;
	h=To:Subject:From:Date:From;
	b=CLiqhIYkD723zR2wqXSZXz61IaKYwBIeFZyQnEtRoBN3+ORoj/vBzAoERXSWRBINh
	 LYknz4B0eG2gK90lE/u4ydmfWJ6raY21GEZGWWA9iRaC5xB2oi3AEzKJbyFHf+pTnp
	 sYKWoXer1iJsGUw3gQBUHQ929TSa6olKeembCRVHpocwYMdb19GWzeOSCitEIi3lAU
	 yRz/uZqBhlBrLZzZO0gDAaVkbU/B/Js8Q87Jy01dFQY+dlQ7/RAw/ffjn2+n5c6S0S
	 PiQFWfCRubjcOOwdR8/1RKK5YGkX5BQdyQq4V6YIZWsTlLzDiVXQeoadyqdNuqa08p
	 tHL2EIhCTeJ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63FABC32771
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166329425339.14267.14957673783447779884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f42a70b3a1b779e16d858e8c4c44a0a02606151f80188e4cf3d6c27d5ccaf3
Date: Fri, 16 Sep 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663294253
