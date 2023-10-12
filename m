Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF3D7E4
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 01:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ldSxf5Oz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C781FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 01:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697074628;
	bh=EfJHdmvB/BXj3jqEqmUdzYCF3o7F0+FihTALt/NT3+o=;
	h=To:Subject:From:Date:From;
	b=ldSxf5Oz/lmTmg6hPW6I/kIqx+meOIAKwqAAkj1rXchZnx7sLcF392jjC7/TzY0AC
	 AKg1RTFQ024qpxtgbHyvpepWo5KQlcdmIfaEr2e1EYTbzamtU0AeC7tS4S2oxHiDqm
	 SJsOomg8/Rt4OKZ3fXZ8DnyTN9fRGITAtjOVx1a4201crBnuhrvIymYvwjIxJPvOVA
	 eo6/T+mWXMtjP6EZ8N3epXUTr6ypNgd5ecs6w7tgIh4V1azJjrWmOZ0wCpG2b99I/h
	 oBKe7qPey88ht0WrzyK8uaGr3hq2wQHYPJLhnQdb6enQeyk9tlBBhG4ZE6Qjp0uJlH
	 Gj4/lCTAccR+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9069CDB465
	for <ddprobe@lists.linux.dev>; Thu, 12 Oct 2023 01:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169707462868.15798.9861132699269982800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f73c5aa382d45ea94dcbdfb262f13d98d1e425de1a2a1cfa57debc9e3b3b4242
Date: Thu, 12 Oct 2023 01:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697074628
