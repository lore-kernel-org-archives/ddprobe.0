Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D91A97E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82670C433C1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662538253;
	bh=PqkXrlCRIb25bE8yX3qhugNlHc1uB08DsV7zTeSxOZY=;
	h=To:Subject:From:Date:From;
	b=Fu54x77RhU0ZNZLjybvqd47rYVxoKJohGkF0ajd2Yhbxuh7xLaN+ZU/Pjhr/4Jpol
	 feOcB0I3eQ6vgROeIgsOGOzQCJEWZAZrypAv4eAxjUUndmiUx67JRTwReY1WkUq9a3
	 eBxWDPyTV6rRwfJW00NGU64K8GUgbT9JWyZmMLdWROTuP9MkyhI0tcAsGOGFkb1Fth
	 z2N52tHtnc4IEWry2HRcY/0z8wPxq2a/ASJRdsmxd+H9PsK8RLZMutRd9dd1Jvy76W
	 Nlal37dOGc/ILOGMDNppeABuRCEIBbrS8jLwGjPa2EgKbOqoUBbMx32pgqMC6JCaY2
	 Wm8mbVQhFL3oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6846FC54EE9
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166253825341.20573.16675885030032061250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b88e6051280fd5ecbe9792fc53d579893a78132cdba9aade4c47a63b7ef5067
Date: Wed, 07 Sep 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662538253
