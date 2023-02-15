Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF0A7B
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 18:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBA10C433D2
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 18:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676484486;
	bh=irCV+5owkudgiAnZXlE46NDf8D4Oz3MOHAoW4teEv/U=;
	h=To:Subject:From:Date:From;
	b=XT+/iXLVymr83cTyQAVXBmqmDwdzUhLA8PBqaGuQq+izIivGOEreZGIoAeKtckA8i
	 tJDbgw5azAaRG9daS4jfVduslX19NWfOKzVHVlmkCUGHSc5XS0qinf1y7qPu5E/B9F
	 yX64kiwar8AKTFEZlNfHnb7sxX7VZmzuUJUMqwWDR77XAs6hpD3jcKrmWrvPqJtJm4
	 Yw3UrPgSM0cnNf/P66X1XjVDo40K/2r0IRYT07GX7k8gJnzJMZ3bk1thJRzhJC1NI7
	 T6NRQFXheJMrLrHpiqj9AOum1LH+4ejK/oR+jvsvIVWCnpWyMb76l5GMOY1HQizOWN
	 itLP14t7dTKIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34B0C636CC
	for <ddprobe@lists.linux.dev>; Wed, 15 Feb 2023 18:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167648448578.3318.9436195868149377714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cad0b2ff62fca342e3d8ec2d5200d79599b397a3ec9a787f5074d41d389d5a5
Date: Wed, 15 Feb 2023 18:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676484485
