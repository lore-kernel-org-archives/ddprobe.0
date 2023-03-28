Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D33BBA20
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B4AEC433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:03:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680033786;
	bh=B8zCLu7HR4QuhxhI1Dbuurfa8h/pq5yEVgObll/BmIc=;
	h=To:Subject:From:Date:From;
	b=ns6dHSykifMzumf2MJ+lwqq0AswAVFa7R6wTSTyOQAALhRrUfaCutayPlvOmo4azW
	 yOX42XV/Xgpr9o/alAUDSGmQwdLi7oq2Y26WKR2PlLjm90+gQudgAw9+/DRDXR893x
	 oREFrYJ5NIQUGPN+eD+AHtKs+ct/NFazZQ9QGH+dyFuJ/9gKDdDdF3Vo1+xrdKTG9d
	 9gCRbPDU1LnbFlU7F940El60bJeJ8w0XsWxIukb8DoUo2BGvKK2pIZMXJbBJ6QPjpq
	 3fjpKTGJASkbzWOyP1B40L+ruVH8LbgZQmy7TXETMeZP5LMUv15djaPxpO4dzJgET7
	 kajwWw1Qs55Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA1DEC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168003378586.21603.40842949075182496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2971a45b712c82eadb1d977cd5028c92d997917f9edad3b509df93901d237f84
Date: Tue, 28 Mar 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680033785
