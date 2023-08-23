Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B7020F09
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 03:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF64DC433C8
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 03:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692762249;
	bh=rnBQfX7b0DizrAxa0lQ8phnpeW4qG6YU2RKf6n+UVnA=;
	h=To:Subject:From:Date:From;
	b=P7U3ydsKmwcFv+PXqnZM5NSpc8BkZUOIPTFG7TPZl7TakXEPcJ/haSps6vKWb+NiD
	 xAlkZ4IMWUe8n09e0lOZCf0QA1Txb/zD3epoj2Pbu5l3VxSDXYnpyJKoNOD55rutHe
	 kOtiZzyc41Qf8VR10btsVJe+mPzmorTJS+/7TFVr6n3ZifN3/bKZYFzGv8YddjomWm
	 JKJ3vwn9wQ0rgxdxzYUWw8xYEdW/5AZNmEJIljLZCOOV9ONhufn2nLN6bvR5YEeEKz
	 LZlYJ4hiAD0XVo17lA216hbItPu9Qi6aSPBEEaRoiB9qItTXV2O7llxKQHO/K+zO92
	 wIhBif3rBIDxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58DBEE49A0
	for <ddprobe@lists.linux.dev>; Wed, 23 Aug 2023 03:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169276224879.17835.4662507058294685767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37781fa29faadb4181087ff6248a1ce59417959ca0d051a52ce3cc5f5973a2d2
Date: Wed, 23 Aug 2023 03:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692762248
