Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62EFF35896
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 18:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWcH5fY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CC1C433C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 18:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697136428;
	bh=JyHbrmfJ88A914M83cdsejx+/yODyhC7hPoL/ry+44k=;
	h=To:Subject:From:Date:From;
	b=hWcH5fY/QinxcBE/wjOPi1gez/CmZkTlPBcHN+6eZIlFEirugmDpYkTR0csYztkyI
	 2vrkgFhASSuR8baKzqJl3J7kuLglnZONYXOMYr/KFYHur1wa223QuPeg3/ef6O565G
	 yqukQ1YyhRm8lnAY03sG9laiHqzYy0qkin/XUF0RfpjNiIqqvz+/ymURp34bqn8t2T
	 REEqkmiXTQChU2WvLyE0A2xbV0yiI+tvdiR3jBaRPmt5OzrYRD5DWds5aw8iEWyHJR
	 zkelI7VI71ohbUGDu5WEe6EdR/vlXcriP6OfXTJaiUCz8XHkuHPMjS2LohBepeeKdY
	 eVKFe0BqbPMcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFB6CDB46E
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 18:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169713642869.18284.5892357769402876625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 266c3c22bc4e646b1d90f5780d873d3ca5a87522e1deff7b850c97f720101ba1
Date: Thu, 12 Oct 2023 18:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697136428
