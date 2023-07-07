Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F7E323C5
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36BEC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688747828;
	bh=uE6gt6pCulzF4qrwJAFUi6/kyOakJTMtZkEF9Zpb8p4=;
	h=To:Subject:From:Date:From;
	b=IUou+GMbRt4uFqCO1zraydB3HvY2AYueWSnWLQlgLueOU0Q0jaXsqbiYTp+bLknqm
	 lfFZYMsjfEiwmm55kyrXvpsq+kCZoc661hKGzt9DsQzr4UuulUCgU4fJLrXo+8Lytj
	 oklk9Y5zTgmyqjbJZPu527eGnFCRKxxhhXWmJ7mJYo9IzGoyrQ6cXWOjoN/1r3CLVX
	 FPTaWt8FfqZpYiG5Id5K7Go4XMgbmFH4aK4PUHFPir5HZiTMRIeZ7+8yo8qfdUZvy/
	 tQ2bBSWOcojhWIFGIDtujtRK/AAK0cX1HSa/YsR8m/PTwOJ+4h9KfDBR0BlLhX/GPL
	 vRrrCP6JLJWiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2727EB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 16:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168874782870.10513.2779261689554867053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8498b5cf2bf585b11b1d9ac3e57176169010fef72de8b29ffd15d02f48a444
Date: Fri, 07 Jul 2023 16:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688747828
