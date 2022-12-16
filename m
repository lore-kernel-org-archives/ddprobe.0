Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D108B3207
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7449CC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671225087;
	bh=WduLmyBrZr23bzmlUEGOnbC+rwzyftsHhQmYzn05ZF4=;
	h=To:Subject:From:Date:From;
	b=aL6hK5lDcMdzOdOyBULzwNv0kQ4nhJv9/6nZ3TdRF+Xjl3cZ5lrT33k4AHrUPPsUc
	 wZ2JkLvDMqrp9IUo/EXgTMNIb7rnk+39WHIUpQ0LRCPI5fiNVLN1SRi/ZKFlrgt+pl
	 K+JPPHnd+XuPsS7qnwlwxI08mvrRd2hvzI/6VbUEgX1JOQI9fluY8znB07QVCImBPM
	 01nCCUSnjiu/cZa7jheir7ttho6EUprCK57MyFdxebgifZS4b5mDVUyyi7g8L9ri9y
	 NTpGBnJt2dPoAeCyGaMbgWIIrqMTyUIcNx8neNXoBXrpYkTOFtO6oDdlkXMy3AFbOB
	 3ACwhWiIuHZzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E827C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122508738.16289.7277981274720890349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b2b7a7a35530449ac5ad9b7d3c784737bc0be7b4d8cd2b904b4e7150165477
Date: Fri, 16 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671225087
