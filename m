Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5F436A
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 00:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88C9BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 00:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672015287;
	bh=BBSchlE+MVBwHLKkchuu1WsV7xf57VAXvLcWS+nvGO0=;
	h=To:Subject:From:Date:From;
	b=slqVY6R4vSKm68NoHVNS8yCt7m0/iRz8CmUMRLICASepTqZsye54Dj7EY4Un7l5u6
	 iZwJtITzYxUDddl8gp7i8LE1rjoA1NBbREwvr5kXbUGGLz/NHnrkeh1rlEna1s3E84
	 EQznHY4yiPTruA8Z+OHX3gsxh10uzZ6AYXoqif8mRMA+eyIMfXFaT7qeEhrXJEKDNi
	 2b+9VVTkZ0d/vpCFFDWKbjjr8Y3EfXtcHXKTIYqR2VGko2M/S+Kg2nxquIw9KOhiv8
	 ZvAZxbA37W4cz5mGHAxgEbKq46/Mib5VHN/Eugpnytz9mw+9CvIukxPc7Y9EnxgM9E
	 M0RKzwbpEIjHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A243C4167B
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 00:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167201528739.5922.10799153278264866656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5480363b5ad4b06f2256d4dc5229cc1a6d38cad446c279409ff43c47d38f8780
Date: Mon, 26 Dec 2022 00:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672015287
