Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4667610E
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DD44C433D7
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662672653;
	bh=i32dUnW/qw3P7Sba1wOHHm9SFjfeBGHIgZ4G6/iz7YU=;
	h=To:Subject:From:Date:From;
	b=F65PhktZAWCjGMYf/VpghwzHzdgebJUKHwx24Zz7iX0hsK/NY4uy5N5w2KHSsHXrT
	 sncERR3YFIdHuviRITBtgMLWA/NibsRH0V/7/+TIyYsweOd+hFae6LDpnlY3sBkqHY
	 0shgZVCWImM9x6sMoEhffgTWs0F7ZtwpwrHxNNQ2ubdrgGemI8fzIPt1fUxdoNV1IL
	 roF7E8WMPpneumP6A1w4I8i78GiK+AfkreLTcHA58G2v3xIbzKJw2+YFXlQc/C93sb
	 6SHyNsTjM4rAsKqHt36TECqhWJkI5n7RLyrXsyp+HLmaWTIXzFO4l0TKiZP4znMgrP
	 4JABGmGC3u/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5580DC54EE9
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166267265334.29322.12475449069575741911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5341408226a2ece079ed43c1412cfed3a2f885b9ac1b1e8cae7d7991aa4e7158
Date: Thu, 08 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662672653
