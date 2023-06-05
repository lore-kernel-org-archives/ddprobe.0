Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E7E6FC3
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 16:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9FC0C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 16:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685980805;
	bh=FKzZ3y1+7OQhHjABJQseubIJqMbwUZryrZ8hQG/KrI8=;
	h=To:Subject:From:Date:From;
	b=jC+QobfQqcAyd8ytHGU/tpN43e/ha6m9qFDxr6lABt8pSIudXZGnS2AHoBM1nND5E
	 aFDa/3fGQG5tE1/CLuAY2W0M7+sZ1YcSJxKT+yxw1A1Tp82xae0yvVjTXCifkmqd0Z
	 UboC5A0nnScTFGaEnHjsUkgL+L+xk5VM03DTtTzE6GfmwyAGVBxjbiVvuIK6smK/f7
	 +/vVmKalou2RoRTwk9GtXT662YjHTcxc9UfBn2qp/mazUi+ZPurwXXmAZHmAsIRdYf
	 Fslcn/C7nTNrRPDMrWAXbqjuLZGpniUC825wcp2jvayRV90EqiDWqJ+4CxNp9soVOR
	 QBqhXDhj0Gstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEBB2C7EE24
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 16:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168598080576.14238.4124420807521457379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42740e1163a37d1b2e31df36163a5de405ed0dca9199ca4d06a098b7499e9c7b
Date: Mon, 05 Jun 2023 16:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685980805
