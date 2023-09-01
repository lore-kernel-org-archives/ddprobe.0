Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7823FC12A
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 15:44:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C81CBC433C8
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 15:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693583048;
	bh=0xbfhqx7WF2NI7TXt7xBKBILlsC1xOQxPbXU+bJ+Ilk=;
	h=To:Subject:From:Date:From;
	b=gFo7dvXwHFlKgegzgnOU62YQpSXk2YV64xmDqZ7LEVb8T7Q9BraXh1UldF8ZtEf62
	 GRCdVW188blZ7PxrVH8pLwbewjcyVKaThr14Td7pcAoSP0cSjYwjAfyIuXsJ/E8CcP
	 mucTJxgPFoHcUrD5HXYGhu0xnCQcL6ACJ9QWXWmSqZPWRRoIA0xSj/0LTUcHCK5ysG
	 h/nlTm001qoCLHN2BCtPe8byCOXw95ptBcI2C+zj/Z2HQeOPZ2pn9uqp5Ya9Pwxh2j
	 Mgss1pFkCJC4B6+BhHJGhXx57cfuBqY8/0UUz3CgRMWksiftV9O4Dg0cRVWJ6SUu7X
	 B1bFYtSl9JSSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2AFCA0FE1
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 15:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169358304870.6007.944729774709573370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a37e902e26c5b75412cf36d7f09bfc249eca5fd6bc56f8f1f634bb4a48bdee
Date: Fri, 01 Sep 2023 15:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693583048
