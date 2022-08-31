Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A94B533EC
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 653B9C433D6
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661977853;
	bh=cAuV992LmI0UesxcrJZab/8Uc6+El4A52kimRh8k4z4=;
	h=To:Subject:From:Date:From;
	b=UyIYgll8yR8Cvxpd1bFlHF3nWkkO9Qu1DbPZWPeAVdg8gQ4ZxS99B34a5v8T47P8L
	 xh8TECoT62rLBswDgKBKTd1vCEJcp9Y/IQaot2/3rL4yMThRQdd0HeIybyVP8qjqMg
	 pLufis+z8wX/EVAU6/V/H3B+bahLqqef9sm9PfT0oZ0vjwlLdlgIH39/jse8xbZBDR
	 hwGUxit5wZzdQ7zceObL5GXMpbymjk5tLarHi2m/Dm8PE/vUtJmaDJMCzQfSg648zI
	 9lLOFyIxW1mgp8XOkd9R/PleUNKi9oO739ebgrfsBumTo7W1MjDtAHjhZKNUL3c0sc
	 2P0PKhTW7vJlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E56BECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166197785331.26832.3908611554414754096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2defa0fa7e1620030c867912f4a72eac8221cd64ed75812871df6660a5660b4
Date: Wed, 31 Aug 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661977853
