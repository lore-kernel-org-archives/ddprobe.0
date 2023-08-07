Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6882919D
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8A01C433C7
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691369588;
	bh=7GPJwjjtZaIPhOjbbuHU8Qd233Z7jicNA+Y8vBncDsI=;
	h=To:Subject:From:Date:From;
	b=eB0Uw0sbArbwMcCGhXVXY9xblkZz40r5wcKCrdgDNV/uJ01SlT5GDyJfkvZxoWQvW
	 gl8ajl7zARhWZ+Ijr9pLhU9TgDypcmEgv/oc+xk0baZ5APrOzH2qlojDhN5JmGBrqL
	 UZtQYumwoFNSg5tD+GQX6auaDFu1HmUe+7ssX2V1YoZJqwMWECG7YVAOG4AKb5XfOh
	 nyihYyvgG3aIk1AZuFzqUfBQzTFMcmgNil6TBp5UuNVGt0w7yRnLSBSRYbYYg8foGV
	 WfRRS0IhOys4TVH1+93lyIgcgJJMLr5hjGtypVZgv58j1ggmLsge4YBu5dt7Ut7D15
	 BO7+nP0RLcnDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC36C001DE
	for <ddprobe@lists.linux.dev>; Mon,  7 Aug 2023 00:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169136958866.3918.17399978988285341600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a8d0c9b891e19a19f2d2d9ddb98afee6da9e6c311fd7c73f2d1e7051260c25
Date: Mon, 07 Aug 2023 00:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691369588
