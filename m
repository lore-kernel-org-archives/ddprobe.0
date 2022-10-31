Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E22CE7E
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75978C433D6
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667228454;
	bh=jMowZabaZPQEk0hXYaikUmSGMSTOinYyxNrejiuVnWY=;
	h=To:Subject:From:Date:From;
	b=Nn+mUFxEe1lJXrKvUOQ23uPkNxZAP4HdOMPlOBJhZT0s3AaCWcnIfz3QzSmU+NMVM
	 pVtd1/JN6jjgFX+EuuU2x9pht5mL4nPrtPQogKvXQYw/+JMUtu7sUKeAd6rkdWua1U
	 euGaMGmfrjoqI4mnrbuG9Rux7N7jSF9pI8m39my6G6/YQy6FqFyuIMMBgODkr+Gqjy
	 YelIXye6wFFpVu/7MdkAi7nqpCETrwXkGb1CF0k96aKowrooai1kJfxgTAsHhzp98J
	 ry62Li7RBv+HyqGjirefd1miXrDLjbPfepKmW9F4Qs54EB1IAJ2Ub/bm8T1aiUKIqd
	 3PYFxc2YeAPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF6BECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166722845437.23102.14233675999851673039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830c84e4c249f8c7dcb585cfb9c797e8862370290247bbd828b903b6d00d24c9
Date: Mon, 31 Oct 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667228454
