Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEA667B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 00:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71341C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 00:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667004654;
	bh=bJI5YWDMfT1uNvsnRoIn8qWmWQLqsIo97A3bAqGfGNo=;
	h=To:Subject:From:Date:From;
	b=MMKhheJYUczepgNHQxKhK8xVO1hIWPjlFRljb1EFryykmMYHxGN5v4SDI7QiGUZs8
	 lgCc8mxv7o80oJ6sML+DVOn4a+UiVIM13x/Hda6nhXCeRaYkH/shsoXVlWuG+T+Yzn
	 GQW9bFW8a3J8E4d+3orED4nMNizkDfu9nlBLeyQGIkuM6vsB+cijpYeglcnifwFuaH
	 6ZdfdYEQEf60jWA5xeBN7w+4CHgd+Mv/bx24zCtWKg/h77LZDW9FhGumxqT3eZk92D
	 gNHtYHoakFYYAdZKFQqAihGlZf3LA2MMftxkJwZqV7zHCqiZ1XaQUFMTA6gCZeeN4t
	 JVxa/AIP/N+Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54475C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 00:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700465433.13772.6247077629112353927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c037ec7170170b71f145824bd44f26f52d720d95dc265bb0416be21e39c6a0f
Date: Sat, 29 Oct 2022 00:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667004654
