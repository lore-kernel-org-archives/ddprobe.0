Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B2415CA
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 03:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4412C433D2
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 03:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678678625;
	bh=cMbptjiSG/G3ky8Pw03mMwx19i+z8dHQkth7QCCZGic=;
	h=To:Subject:From:Date:From;
	b=WAZ8LtCkdVHlVeMAkhsR91QokHeaBT82cqS56c1eajE4V8bk+2+HNjKvIfw8WdhmE
	 G0Xip+Adqz+5wpQ31DyNLyuADzVqAr28koiNSJ8F6Boy/et7TOylparNqX+26TOBgH
	 27x3AKMxz7Dbe50Mi8IrKurNeeKPPBVB7wdLR6uE5KV8brd9X6WRiZlpWlydM9XOWM
	 2CDCTHvGw3IvSRy9e4Rwk8k9/6Y88MmgPxOFzjTiZtVZTaYmA6OIV+tCQ1qFBmkyLq
	 nT4jUWVRrW9RkSlTGDJQ3RiuVbIMU26ct9suM/QDDhsGqIWSJl8XRiYVx5fYGDR4Dg
	 RaOXxV46N9LHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C0AC6FD19
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 03:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167867862573.11491.16366873497657718343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769686be21f54698448b932b58d89d14311df4eb32721811556ae12e2da72a8c
Date: Mon, 13 Mar 2023 03:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678678625
