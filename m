Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70A1654
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710C4C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665041453;
	bh=fozqbEHzqfRKX+nZUacyf/72GwV/lyPs1dVAOlTbYYY=;
	h=To:Subject:From:Date:From;
	b=Mg1z0VsBIVzEen1jjBcLf29XqmxG1JiCAka8gVz1LUZ0RItB2ha71cw+kJpdqdXVf
	 wlLPiK+EZSBu186jxL3TAaG+dGpPjyWzSI4UMOM4nN5FyXjFwUfTds9b1t0zXdDgZj
	 5IXV7oA1gGVt8A3VdOsAvrcUNbYrSAYWy6L4w03GxlVhoXhEEMzV0ThEq1uxeu4KQN
	 eZ6DgMnraW/Wy1SVxY/PYyyqZXWCpVKX1OzzAWtigZHOzesLjrxD/UH7ZswC4ucFAW
	 1hpY8oxQjaeVRIFum/DlP45no9D9+Q7qwQ9fa/16rP7gy+V7suI2eax8PsDhaanIR9
	 3sAlFWboh4m1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 569AAC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166504145334.18625.2205749236759663775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1656bc9a2814674d7f190d01f21cc8a04005ea0b43e412310714ee7600d7e07
Date: Thu, 06 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665041453
