Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48862626
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6E9DC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681404485;
	bh=jUYt1L7LU+1OrxPbCHNyqiQUBRDwLsOzLcpqRUN9KHk=;
	h=To:Subject:From:Date:From;
	b=p2nhfwS5LrWXdrDAbh9cITZkpBQO239PlIzYwqtVY6JXV8UyWcA2dsAmj6SWklJ6v
	 f/D0Qn1NVVEokpx1CwkIHQhe5Nw5D1MV4qQIXPqgf1Ec6+gWw5Vzf1Qrn3bY8wDtq1
	 kcp9sIsKh6WlHlBqBMRdERo7Tj5OTi4xV0asTC5j0NN6f1gZBylJPfofl7z0GOn5xr
	 IMcXlUxdbgrDF4sCpX/RADvgl6K9aPCFg7vO0+BpeTXYqovPaE352EybdmZIJaDt88
	 gzOaRbRPGRy6+rCYMVFBxkJwCPXNx8QCp4ew3bn4k9q/VgvslgnSb2P1KZ/3Q1Xn/O
	 Vf6LW3l2B8W1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C994EC77B61
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 16:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168140448581.8678.6189441712529821750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 248fabb7f7259c485f4ae9ba50e1eef43adbc54b267652680d81174ead2a0210
Date: Thu, 13 Apr 2023 16:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681404485
