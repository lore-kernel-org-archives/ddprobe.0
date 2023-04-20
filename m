Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431845661
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 12:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD68C433EF
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 12:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681993625;
	bh=O3HI/2FPrqCI6Ic7aCDYImbqbK6e1JO/Hofy6Qe5AQg=;
	h=To:Subject:From:Date:From;
	b=jZtdXtJflPv/CH+XMEorHj+Z47ZMk4FCT0gLw5UfbG88cNcXc+nY1ZD4iOR3u5CIM
	 Xrdo8OZQrMwyLZ5iTrUsOWdMvgPrs4eOsHgcfYyBYO9AwmIg32wT9a5T6YiLUduplI
	 GOQDHvYDM81LGGYzvYQXtjcrrWykGXDXawM4GRdui/goUYaGxI90as632PiVXmCGR5
	 O+fK7knED0sg/zI4KCgMFJrmYl9SAna/n7kFOc3LEsKra+cK5yUsF5fK8OSZezlAoA
	 WmCdRC3pIyPdH7FvJJyLgTO3NqVhUL0P/rC4e1vm6h9jtDbpIE5eRZ/JF5CO1J5rrw
	 XvyxxUupytjnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1F02C77B72
	for <ddprobe@lists.linux.dev>; Thu, 20 Apr 2023 12:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168199362577.7989.11371315677423875790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b26aaeb0bcbbde5b8a88c72d8d124b417d7c4612b43670a7b80402aef2d8e6
Date: Thu, 20 Apr 2023 12:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681993625
