Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E3B18F
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ECC6C433D6
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667146254;
	bh=dZ9AjB487HTLcNkqH20RgeJatUaLDpNZp1CxUTDZMaE=;
	h=To:Subject:From:Date:From;
	b=KZ70oVE1DHAgd2Gwqht4TnOiX0ZI6YSJfq6SgM9G8gOeIZQYGEru3jTqOcXEDsKIg
	 B3tOw/Epwl9lzn9rI0289VevC9FmQHIpoT+4aHkOhejM6kx8g7zI3zreJVlGtLgQ+U
	 xQgDo3AdA0Les4qts2Ol9nCuXvGBKjPM0PGltre+GFDtR7X9HIq0a0j7E2vgKPrlv+
	 wVKTn+2HmzMPct+KYFbaLbtYzdhgyvRser4H1qSexMzLUXVsSLFgydqrcPRLoBw4Q5
	 AMDacZFxX6dvmXrkOOqjGWftbGZCcrFq0Ed6NLhy1LHIcJmH+ICDF/jX/9AgKcjU8/
	 OZ9p775gBl84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5274AC38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 16:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166714625432.4646.5957367247914132038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b878d25b1e2e62efc67b3efa072265cbcc8fc7aff7b63a89dfd65da4a71843bc
Date: Sun, 30 Oct 2022 16:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667146254
