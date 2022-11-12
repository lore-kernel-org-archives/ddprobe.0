Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA28329A8
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76130C433C1
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668274254;
	bh=QJHUBjGEVfJwc7ICgAWvarhQO7XDGS28IhSnym4FGqI=;
	h=To:Subject:From:Date:From;
	b=Tvp9SKolV49YIFuFIM1n08tO4zYttbBJHzNrrtPC5XJYDLeZeTsDWC5gU+6I0+sl0
	 1UOTi8jYIbahGUiGy3foQ/CCK2bZ6P33Im0PnVb5pRGfwguxdu4/pX2CVSYg7v52Jn
	 bp/cOMZlolx1GMopuidw2u2pFvXkFZo4rr6hovpiSxWhzTOLnAeLZ6W2VmH4H1ce6s
	 pcwmVn6DiKWkoF7HkycqKXPt7rhHwtVqYe++mcxMuN4E3EsRsarwQDbrK24FDdPzOw
	 EzXENrnkmobZ9+UP4t2yWSUXPtG1oBtaLZnfPB1TPCEXg9uixf1gK9mFKddCourS3a
	 jkdeoEw+1h90g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58953C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 17:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166827425435.14176.11502880801679248518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33f82bac01b3dbdbef746362b0f2986ab52e6a603d2f51a73fc31bda458bcd22
Date: Sat, 12 Nov 2022 17:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668274254
