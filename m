Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE74185F
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 728B2C433C1
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663072253;
	bh=xA+76xWU5SuK01Jd5/fOFf0VQPmj928sWpmWY+ewdvI=;
	h=To:Subject:From:Date:From;
	b=ZxFHnmQ4M+8eTNgEQuQQg+mRSs7q0w9KXvIWU+9yMvGMGoY8ueE3YFeUIBxEGrjZ4
	 hFF7X8lwhZQsXwbTe89jKO2RxkT0PRwzjPpECYm8ySo98tqr9+lproFekNvFo4pEsr
	 ABCcCunvQxOet+nH+klkCbrA4GJDJu+ZUwQqpmu03k+xEoSjM/lqk5BYubXY4IBIJ5
	 uP2dwkkL/1XEIT5a4csZVWr4aRxT5iAemcIEmuCJ9XxIPvId46m5cXugKr6lwGB59L
	 FKG/Qqv8IZjgLZa+vTAa/SZawrs5zGu7ou7H2UA7xQeg3anbk2/jdggufhux/Fwe8Z
	 3t4MYRraeduvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD93C6FA82
	for <ddprobe@lists.linux.dev>; Tue, 13 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166307225335.21712.5789350014223151402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39b54351f397404ed717fc0358fc411b31537a592b01b91214157878c1663a2
Date: Tue, 13 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663072253
