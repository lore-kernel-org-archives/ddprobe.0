Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC2D3D7E
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B34FC433D6
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664923253;
	bh=g6HgVhT7Dbs3rIo+QNQ+GKwSv6obwSFTyKer7l/hL0A=;
	h=To:Subject:From:Date:From;
	b=Xj6XCIhzM3Q8dlsclCLZIe596lgRDuvy1fYLnBs7GImCOO8UV5RKgSRkVcOEIT4tq
	 ut2QARD2zlQdou6Ii0lPRtL3wEjNbdOZPOwa/q5LZOsEVn9uVldk5MJvC+cLpK2AyB
	 6bYDZbiRJhGmR7qbakf5cpngGGfqDFL/ws3wJV1splE1zCjrVUOng+KOE2xzG7ouGe
	 Nqg3YFznL+kmDzv0GIK9tXL/b6UJXlFPXqIvutHWX9xnaCRbs1a89ke7ZlQUFq5f8o
	 gnZx6P0PCartVKn6MaqnEba5Nv/Bii7KJ0xV+TK7DwQS4C/wFSqoRaCMkmnIv3G9VF
	 C947nADSEDyfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54509C433FE
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492325333.7971.6123911644820048697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de5aac44d944aff13d908ef855f4235d91f4ad2d0a6874513d35ae5548d8cdb
Date: Tue, 04 Oct 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664923253
