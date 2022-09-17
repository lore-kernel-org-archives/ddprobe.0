Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDC75320C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E9FAC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663435253;
	bh=WWlQ2o99g/S5uDVl926xw6Drx74Kr0pzw7RvP9M0BxY=;
	h=To:Subject:From:Date:From;
	b=L9fGccpSnLOkTa+O7yDVun88nMWXPpNROHaapzvpfsUweMV3U9bXW7e298sIozRht
	 bhH6RkPz/v1S9A8ogCtudd9kfHLNVPoa9xYtS/jZgsiXHgnhWxyqhAdpsj+YJW3hlI
	 +3+3hnfg9LQVZxmTAAqQS/Iawo5lQAdiMgHT3b2u7lnvMMAe+cPsuM0QThL9z6AJbq
	 A1Sq5zvp53F5tcp9MB0X7Y5eVw8WT+nkO3pWZQFBA6Jo81AsZNFwgPR7UF2RJ1BNup
	 tVjZaE2jXtyeGz8nvhKam7JQhlQfdQBdnPMsSroLPrDJAOuZCjB7s2os2OQzQToOju
	 v9rXW3Ll6ZrNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53620ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 17:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166343525333.17362.9419346620238077227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7b4213099311664bb193d2740ba7e0d9e1df2947165f45cc7b947575aa2af4
Date: Sat, 17 Sep 2022 17:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663435253
