Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734A4EA0
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 22:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5CA8C433C9
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 22:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691102588;
	bh=pIROigQWCbVxqBXXdcJ+PwiaD+X4FQPEiquU2GX+dXA=;
	h=To:Subject:From:Date:From;
	b=EJo48hZqyxu2NpPq+KvPHVUKJr10oe7tDqQT1MFu7eF46pA3XJbjJT3r0gCUBvSMP
	 KcvHE5jPGEhDU8dHDBPD3aTlZLieCa/dzov+jVkn27zDB3We5cxQUtRVnq5Y51gzvO
	 tNmGKGXZ3hNbFhkd64wkFVmOMpKNbw6Gq06ee+fuxjASDzQeZO7gtdlUIeuQpLVA9C
	 GC5BwWblNlFO5DNiqcS4rnPzQfrJrrL0OJiwFGZE+qcYvri1/8eBRPmBHOVzvAcIT4
	 v2xBsZEPmO+89dRYvTOjrQWhTB0LWMkeN9II0wfn88gxT2fO7yqKnz2vcsJfsWcNIC
	 qaNoPERsoER8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E12C001DF
	for <ddprobe@lists.linux.dev>; Thu,  3 Aug 2023 22:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169110258874.26322.6035031703103772322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 982bf85690978362f544617740d5d9b4a89858de04eef3a6cd10185bc47717d6
Date: Thu, 03 Aug 2023 22:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691102588
