Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4B22258F
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:40:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73809C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661503252;
	bh=rQaGWyqo38X+Wy10GalQ1ze4h9p8PNfUWg4U5UFuFXs=;
	h=To:Subject:From:Date:From;
	b=AT+H4NbEEQAhuRlKL+VHFsU7CGBPbfICOntmcWGC8KgiZqEJPHZ9zD4E+V6Q0EP+s
	 FipKtQFjs2B9NLg3TdeFAZqa8262FGM1nFCTTAV0pbw/SEOjT52o7yFo7lhK2cSH2o
	 ++mZjtep4B2NGsSfrtu/COlkf8vkgGQqXK58dhpGt3wx6ohcNkhSVChSZBU3L8fVSV
	 1TT6/9egRh+HTPebQpYcZZP31gbJzZEAgGtIHPz31ObKytLYxmTyIUvVVaoA1H847G
	 UhseKWPyU9ey/J/XtfM3QYF9QZiUiiunX6iT/s6GYc7c2y/nY318KkyrFbV2c4Nm0J
	 aRiNzdRiAmbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57FB6ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 08:40:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150325234.14938.13957696486876358769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b07571d9c05a0f8e93ce803fce671b52a3dee2eed753c14f03025ae003ea9a7
Date: Fri, 26 Aug 2022 08:40:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661503252
