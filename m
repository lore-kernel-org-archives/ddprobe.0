Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6F637A
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAE33C433EF
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682042826;
	bh=hQ9085qk6SkroDtHmlrI8ywK4VS8Dk2PDuWHYUbwH+E=;
	h=To:Subject:From:Date:From;
	b=AB5SSiWCXrM8jsn76JdvOIwtxKjD5VtkmDU3UtE6H48ak+M5SxPJSIZOE0YBS9OwP
	 LQgI6UqZ5GBwwCz3cUEEBI9tOxUSTdo/mh057NP+W7t732Bn093zdb5FcDl1Lqy3HO
	 Fja7vQ8lQd2KzWODyRGD3zWbdIkeEcNoDKdOG/vX7uD6+8mGlqbsz1jMjk8MUy/xGn
	 VLSs4TvcX2GruaE1NID/oUtqah2qFsuhXewCX/oAX/kCAkidm3dz/wGrSnr5Zma3c6
	 1FQwNpwOyVsPRAWjeRDX8Fsrv03kf/maGvw/O/cvfIOJOAkll0t2SJk0W+opn2nFmO
	 LrLUSqPdEDCxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D25FCC7618E
	for <ddprobe@lists.linux.dev>; Fri, 21 Apr 2023 02:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168204282584.23725.8287812662263687253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb70265ef010350e7a80d023927796d109a404711f47377693a3fcc6f5844a6b
Date: Fri, 21 Apr 2023 02:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682042825
