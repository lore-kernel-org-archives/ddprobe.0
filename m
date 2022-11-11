Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E6E28FA
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67CD2C433D6
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668200454;
	bh=eqdgif8NnoTU4oAu4f7RksM9Gg5w6zVk3T4pUdsjWng=;
	h=To:Subject:From:Date:From;
	b=fzk+5H5ZATllZJbeA/VzblWrkUiuwi6/qGXbyT1ddDF+Myz1FydLeVNFcvIpevZQ2
	 UpFcoLC1n/Vphp3y7Xe0d+eXjlWn0J9/sWHCEswNrsExNPowsTrbzEoI7dJVXGRz2c
	 itnCSHZwhvRjDDij/ibTcKtNl79kWrdtQsHw7vI6W0+knmNb0laIFD6TxBlBl3yig/
	 NY5GDf/5NQepd8mGIfQCzhLi8Uu+vIXEp8IxeB0wTDsvkdYOZ9ExLNDwIYqv3N/l+7
	 r+sxIzoKBNKeJOfHEeqdL3TrHQRZOXQQMktbQXaW2LUUGOtz0j4wNkCd40WZep6AuQ
	 UllOrs2GIpRLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 524E9C433FE
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166820045432.7082.6209050504421054302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 536196f758ead03a44f0f2322f745829d516c3eb9df25002b317235139e2b608
Date: Fri, 11 Nov 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668200454
