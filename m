Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3A311CAA
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:45:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79D0C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694810708;
	bh=xuZrcGfACn9lFl9+7a6X0xkDy2VHKSxPoTLHfOQX4WI=;
	h=To:Subject:From:Date:From;
	b=LKNLqwvHJ6F3BVlb3u9/HxK2rmxgd23k4yc81fd4hdYYbO91kMJKnh0+w3PY+eNWm
	 skt+vI1rbYP+izGnrg3kM+fLXvKS2BHta8X0IUO7PHiCDO9BvhvhtZdqbitLr4/M4z
	 X0oGMimkAnoaMzSP1gJaZJJy6Tf0hyX/MaQ8AK2ITBoXIe/G1RfTVP9RlCMl7BZtJm
	 Ifw0tyTfeTdbYvm2AgQfHzzi4mBYogKqgs6xDPEnYiUhS1TaDztoPSjV9GhpC7UsGT
	 S0VviWuh2FkPC/NQYJzs7xV4arvbzPcwvwJ9KhddyV+6YBAckkKA5EO/AlMhFmORo8
	 F5S9J+0WQufAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C76CD37AA
	for <ddprobe@lists.linux.dev>; Fri, 15 Sep 2023 20:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169481070868.7765.9481929091968360018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e65cf15971b6e7a077e63ea43ca7d356c7c211fbd4bd6f50f308bd9f0ec5a6b
Date: Fri, 15 Sep 2023 20:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694810708
