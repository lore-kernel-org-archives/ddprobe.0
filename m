Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4719539F
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 14:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FE5C433EF
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 14:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682175065;
	bh=Mqs6kE4hnpDVqNNR2qFTTJpBU51TH2tkgAYVbcQwYKU=;
	h=To:Subject:From:Date:From;
	b=LzocwcHjuPj2rMB9aoTzcRjnhYUayw7OgsXwZMhO0thjRSXdzDoN+Oqkd1zrVpa6K
	 cWLHI/irc+wK4nuO5Bxt+evhmy+mprEdANqKzvsOjeYmAeu4WkfpIeOvW80NxyfjzA
	 XPPHVcKCjGZZLEwnQNaW13fLp22WxPaFD9fOohYqy47m/wZlgVeta+tHOS85MGM/BN
	 X51/pAGsVmiPg+BWJUq3sR7AjHrg0PSZaLNJyfLOtRcF3ILqo1Uy2XMa4fBUzJygbx
	 8UQal1s3P/o3zZJn33Qq8YA4+vMCz6VcRMNklgO322b9oj/pDD/+4E1qBtxR/yatRx
	 wBzZsIkVDDENg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0C1AC7618E
	for <ddprobe@lists.linux.dev>; Sat, 22 Apr 2023 14:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168217506578.26289.2589151901490291200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61d7b7e0bb0b81b61ce2b0ca964c580e910e7fd931a6abd2db48a41b6d9fbc4
Date: Sat, 22 Apr 2023 14:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682175065
