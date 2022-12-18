Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02432CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8373EC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671393087;
	bh=t5RxpBe6XLprSpLLlpg5QlIOcaA875P4uleag3XeGl0=;
	h=To:Subject:From:Date:From;
	b=s4rU4p6lTKU/w1LfUbtL/8w7WzuJ3KDrxKxtWk4OJt7iClgwk8qMYJRetZ54RM23L
	 nNWQH6XxK7MVaCvhuLlqK5EH3G4k65GWgKVNAqS02zkqY+eC8GKD1YBXlHxGOZ+C1v
	 rOOgypt7VfVlS7tEJMWF5MvA5Y1zOVVYz4N9inkaa1VNFc7Y3W0KmxcarIowjgfnBB
	 MoO0iRh7gbBTi4sqoxwWABqoqYiezDFuWHfD9vW+Iil+uIgVMnDuahAjvDGIBe0+yQ
	 dsXJQzzyRED1KlEt7dKUqgPg9b5SVFmk3AKOHuQiccyjlaDLsOtTavkWKjQgcldDD2
	 q8WYqvHYUUVYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 680E4C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 19:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139308741.2002.3394586812973507314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf82ea3fa179fef7d06cd3a594e67d5bbe361102c051cf1bc674f68088ac47a0
Date: Sun, 18 Dec 2022 19:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671393087
