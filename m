Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BBD946F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 18:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D515FC433C8
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 18:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688668628;
	bh=j/vMEtz+IlEGB0Brrkkag74NRgBoR/civGG7QBnSjmo=;
	h=To:Subject:From:Date:From;
	b=kWg6CDAJHr3rX2mvPsOPTTNAdKkzcRB1VvldMbwE2hY5mAmRoOMr+nD4CIZ7H/Z1N
	 hqpiV/SY7KPdfoa/tMnFsBrwteUlD2G1kZU5W7msp2b1t7riu6S6++1CXg6VB+s3Bj
	 EDLLCOT23pGVVsbuqWlyFi0K5Xkuuwfi3GxygbsybLk91rf+dYg8X03bnBOzVkpJ5+
	 dr62Ko+g4UiOrpwFQGDlj9iJN2com2YDljgsD8/0oCkwrvseNrUBYZQpiQvhCCbSBJ
	 gP5CJhzv+TzinyX9yHVvl3g/S1v2tDu7iGqq9TofhHYq3xBvfaAucKRBHWAEradn+z
	 /giNWMpRuUZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6957EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 18:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168866862871.14933.7141511451903753650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbf623c7abc827cdcbf6e07b6dc5efdb2756a6bdcf0a861e1e7075a2791d58a9
Date: Thu, 06 Jul 2023 18:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688668628
