Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CDF3AC13
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:25:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD8E9C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695162308;
	bh=zASEhigyFxoGsopH6e8dbwn0+Do7WA0aQHJA0/RBaUA=;
	h=To:Subject:From:Date:From;
	b=DmE7UMOnNyL/PRM5gfnbtqBTR9KGkXhkbyjNe4PHomWzZ6AxJU/lWPJ78vEedmTYA
	 TOCRIV277JftGBjqHrd8MJc+W4oP70RQw9vFKYaO4jTofl3B9Qw0H7aunT/y852UHX
	 M3/1yC5ld40lUh5BALqd1qROG8kic4UcGqP50MXLgOG/vbTgHONpd1XhhgvKadnNt4
	 rkXd+Pl4WuxB7GXf/92zES+KZmk8NDXvihQWcrVYIoPt9+wp1j3QlYQRUGgo98EkOP
	 mwqZzfBPD+XNJiUiWN9RGYbbRIof6FJN6bFeWzMAcfq/GTrurRLfYLQ4Q05xJRIREB
	 tq2M7NnHppf/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AECE4CE79A8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:25:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169516230869.27807.15018474869813041302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f26b3641a173a0a8bf8a7f17786482f1f916253ce3670dd7d28e24bbed8e06
Date: Tue, 19 Sep 2023 22:25:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695162308
