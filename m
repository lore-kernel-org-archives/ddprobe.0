Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B837B
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E850C433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665735053;
	bh=/Bp4ADBsCKst9LQAWswuQUnJPBxlklz/eXSCKMEkkf0=;
	h=To:Subject:From:Date:From;
	b=hGTiUp+X0VEOUWCO0NE62TlG/XOWu4c/H3yn6zX1Bp8R4GLInLLznGWiIB3F0z9wT
	 QYUzgXijRnRPbgcqeVqyZFw1XpbLSR0LppknlDdU3oopZmasvFUpLztts94/ZJofHc
	 N1Ol9gIg8/39MbVIy9VX4yCegd02y+MQvKrfRr4mDkxnPb8+zmyfBqzuddb7KsWkWM
	 +Sa+u4RG/Ef9MysLbkQRQ48ndVfEB7GGokPkU/tvvgvcHyCxc7vvpdrJ7FtlXMgKtq
	 fGg7d0RbIBV3r/oAJfrtazefdC1X/PDcDGckFnQliYIy/MuDvoodiVJddcrtAFNTfo
	 tlKmc9PohNmrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5318DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 08:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166573505333.22230.14914972540021195307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b137e262874b72bda731b256945e979de9da9f7461d010bdac7bfa2c903ca199
Date: Fri, 14 Oct 2022 08:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665735053
