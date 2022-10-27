Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4C1186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D1D4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666872054;
	bh=D4oQ0bQrOmj63SV3Y9E2KzU9GaOu+OaTE9VXDCQiO9g=;
	h=To:Subject:From:Date:From;
	b=bHQ4OzDB1B5G3q9p60q/pmTBASU+qZJRWVJcxWyXEwURvdTELjUmXYxQMoXkTEv4H
	 lBHNsStgoXL5qv89QyO+HHTNL0gS/oD6H3Jk168kav6tpbYlgF2Z60uj+7TWuMYj/Z
	 rEp5QN7hotNklmp8TdiejU3AixmP4Iy6SQH5kSAeuCZ/CnC8vwB9+eXMKNPVVqwyUK
	 vGWGzyBfJ0OhytizKbNdNRTEoDdZbXCi/fCkotWkO+WgAwps4FfXY00oqDdGYhNPYD
	 yQO4HwPXS1icvDU/L56oK2qb6aKwlqgGtjeUn7sq1i4cptIA/PXpSz335ElqM8U46D
	 ltZE4T+ncI1hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54720FA3742
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 12:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687205433.13084.16380362992044615953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4959d16747450f73beede2598fc62e14e1ab89a7b907d61d8609c1a8588c702
Date: Thu, 27 Oct 2022 12:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666872054
