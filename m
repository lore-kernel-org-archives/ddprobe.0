Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B34DDA20
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A95FC433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669923054;
	bh=ocCTSjoEsj92SlDyuI1Vvw+4vyDtsvXhyD1GWqH0R3Y=;
	h=To:Subject:From:Date:From;
	b=iuKpLunhEGYpaua+l+4Y9LWInc4Kx2SEkArEGxemhpldF6MUgtQB798DmYGcf8wZ8
	 +FKCVGfOeAnLKnv18Jv5bTNCX7gqmsSt1tF2YQry8W7ObST1/EmCSr8pJXogN93MhY
	 aHOGRsWMgc4nC6Nh1hvKEw6SG6Z7ELI1lExNFduVa8coIMt3BSDEvNegJ5UfVTMxFy
	 yJXwJha0vQ7jX1W9px3bk/Sjd6FQp8vL1jWcpLFFODw5prozkdUgk4WTvTK1C5o2IE
	 8VDAEYkj9x5TIkUnNRjreaocENz1wWuZ57ecbYE5irbFGW/Li+TVLRzo339gJ4yWjc
	 KNjmjLNQoZJtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50415C47088
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 19:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166992305432.13071.7113513483433115320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42b9a57fd362390cefe64e88df09837cf565fe1daa20efb632bff6f13d4c8a3
Date: Thu, 01 Dec 2022 19:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669923054
