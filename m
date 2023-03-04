Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD962585
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D70C433D2
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677954425;
	bh=pIrl/AFZS2Ketw77bILcoJtVYEVqac34DK943SJclaA=;
	h=To:Subject:From:Date:From;
	b=APgVqOKzPNW8rSvQ9MdcVzWIg/w/nfcoldaT9rGrdgsSon3TjwRIVHfQ7q+SWFZjk
	 AR5MxlwxqVBdX0J1KRluk5/OtxDDf18qboOr51xdHF/m427GSLLtKlg20s3TOzQc4B
	 aEKq7v3IJRJR089qcVWmGexftDeSF0Dc258ZIjheRqhBk0Dyg5SNnReGK3R643+qoq
	 gxulXc0GdYKUvb3VvyKKXl66IxB60uwqaL/02tYlnrZCR4av+cdOzR/hkh/6vBeg6F
	 fnC/2oZeC7OIaTXxMZVf2iVOlV/wpDdtiO9APXX7XQZ/todmKb/jW866FsgdPE1T0z
	 tttYLFO9p4ppw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C494DC64EC4
	for <ddprobe@lists.linux.dev>; Sat,  4 Mar 2023 18:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167795442577.30414.7537344547776227665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14dbf262a004427a3c7df18df250a8ed5caed89b911a80944d1659c38b597f1e
Date: Sat, 04 Mar 2023 18:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677954425
