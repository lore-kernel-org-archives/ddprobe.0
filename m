Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AA520EF
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3E2C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674216725;
	bh=BKESJ30UgUrLr3O35FHG5kvzxBcsWx9MNHTpfiXr3Gc=;
	h=To:Subject:From:Date:From;
	b=J3Q3OtgjfB2vzBRPnkc/3NIkvPsW805sAzu6KMwfI/TLMoZEav/HqgFbm6y8iY1Ni
	 cId3TfknUeF3IIdc1W58B5v6Et4p52rAhGIyVfIqBnP5qIeOCd1GhfewP3AePktmfo
	 RD8NH5Q++42VlYXX9v6ZSMYJ3zR6zAEF8NTwFuHO5IgE4wPNHrm2oRUu5qSPZK5YZn
	 VN2+hCVY6fHyT9akotnwq8Z6xEgds7G4hbHdDPYUj3MoO7/BFxgmmgDpkAA0I4hika
	 SJHI+Sx8wyAub5YUgJsPN6Lg68Z+DdVlvB4dg4m0xi8UsfJSjCL8Pcd8kPR0HL3nAy
	 RkJRrijS1olgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCA4C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 12:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167421672575.20151.16797273821444195122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e888bdf79390812a16add9e3abc2663f8e4fe21143c1e29f5a9d0fc5a64390cc
Date: Fri, 20 Jan 2023 12:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674216725
