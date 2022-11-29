Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF4FD630
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69250C433D7
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669693854;
	bh=g6AKY5uqLtWFzF0ZgzsJ3sJ/x7orHwRSqgjBHH95GyU=;
	h=To:Subject:From:Date:From;
	b=bJpf0h+Sa7M9eeZWTQ/1IjPSw8lN+qT0gtk8ygFSTXQ55DpQrXKgtMxX8jpR2eSi7
	 BwfCdzOPp0sjhEgRKadXIOVSTLUfJ/JkOOEkGvPyiDrLE5g5OreR5x1ouzLYuZTInB
	 ayzKG7Us2p5VMdQ96acWlvGM4sS33JZHKKOvvWzfI4fww1X68xopvZqTy2jkJbxuEu
	 Fi/vG/LGrsD3/GPw7uDB+kxpYIA73BkVAkvGNLZJNDiaqOgQ9s91GflGIypCYu6GEJ
	 aXwSjAwyhaeZenX7/2Hj3BwPxHMSaQg7wMm4Uglnc8zX8nZqDxLsGN0UfLV9J2aPSf
	 QmHQZswvHzELw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51D9FC4332F
	for <ddprobe@lists.linux.dev>; Tue, 29 Nov 2022 03:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166969385432.14923.5600663894874228208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94533881620515abb918f705ba7be6297775a4793d40d82ed1f202d3aae83cad
Date: Tue, 29 Nov 2022 03:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669693854
