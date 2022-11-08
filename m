Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B974828EE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 773C1C433C1
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667913054;
	bh=ZUQzYuCtrTz1zrhvGF51q5zEPxcEozPkfdNv1GjlKws=;
	h=To:Subject:From:Date:From;
	b=hRilW4KbMZV23DA81CCox87XJiJjkmP+6L2dFQ3Rql1OvQzenQ4iRziPb822lrIyr
	 BMBeVb3o4zNqKCPzwdgfpRoAzhcXtg3a7NV/bIRHyCBxdvXUPyk7t2OVywOy4c53Wl
	 eJGfPaxczfTd7eOEuMjlCjlP2Z14sTfbO966c52VJL5aBHZbXGv3a1q5Or92LrZH8p
	 eNC8cd2Iko6nT3BDw3R6TBieUcEqwD1RjZ0TBvt6sWSd1KEvgDZ/TKiiCaT+eKhq0A
	 ihU8EKG/OnBnjBr1sX7PDNIhbpHc8XQb/RyrMUJwVV2pI5d7GThBzWse8t0mqJJvK0
	 wWg3jUe2If9aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 565CEC433FE
	for <ddprobe@lists.linux.dev>; Tue,  8 Nov 2022 13:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166791305434.14581.6606317314462433061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98b2ab18836d2cf90fc63ab8b77d78ef377fe04c0b1085477216af940746421
Date: Tue, 08 Nov 2022 13:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667913054
