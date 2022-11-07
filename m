Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE6315AD
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74687C433D6
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667857854;
	bh=m4CEgGacwY/I9Mf9eNTn55ohF3mK+rjCIH2pjHJQPKY=;
	h=To:Subject:From:Date:From;
	b=kVgCpurcI1RU4g8Of9Ne8wdyh1Hq9wkODEmYX5VDQXX90vkYK03ofpXAhTB/P9g5u
	 g86fw0vxfLrgGwODRiHz+jGWDssFnHo2lkVLWtkMk219WVt2QVz6BiVQDhi4GplI4e
	 +k7B9wA7MZvCqZ/p5R413jNaaHgHHgGL0E5M6dtwy7QiJZafOq/72vjsxMceItagUw
	 4asUQrRPzWkH7dYZA8SVgW6AHBqb8x47zw2A1w3mLgwiAQ4CqE9eBm1sZpO5U/QuVM
	 nuPbtSVi5/mxyQqt1S6sMnyrnto4qnThMcqjq2kfQXnHNc1SpDEdD0IvO78hpPzm1n
	 +NTJAYvNmtRCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57287C4332F
	for <ddprobe@lists.linux.dev>; Mon,  7 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166785785434.14100.6924988944780788489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac7b13c07200644fe69db3254b521ff15f20437e086f9d21c9ecac07832df80
Date: Mon, 07 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667857854
