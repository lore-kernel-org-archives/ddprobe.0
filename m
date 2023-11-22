Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC3844EB4D
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ShiT7R4I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76E4CC433C8
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700680696;
	bh=gLP2hPdWUpq1v2IucYnOmDUq/wCeiBhgRG8ESlyKTHY=;
	h=To:Subject:From:Date:From;
	b=ShiT7R4IocEljoM8KiiifbsuG6E5Qc68rEY5RYGoQLEb7IyhrqIBLs919QnjPCjZO
	 hu8tRhyVdrogZAesDzWrjmskm5EGWTJOOEnBK8fn4y++xwjst5RTyWA7xPWWkL7CKN
	 tiwVEz4QU2IDO9ey9XLiwXr6Bz5EFQPZybs5TibbE2LB5e5f0B8ugQzrZXuOqo6n+I
	 hBT5FqLzJHS8tKJDp15DXxgyk04wWMNqte58x2dZalwT5qmti5AIJ4cO7uTT6sXFQj
	 Qm7RLVieuqMXCXAyzt9UEKDxcCiZKkD8A5wLoKffBOe+TNBylPdC2x/BqXSwLqp6A4
	 ZaVw/MTRR0uww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61120C61D9B
	for <ddprobe@lists.linux.dev>; Wed, 22 Nov 2023 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170068069639.11400.17299826445649641437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c3cfd798ee11dddee8324208a99882641faa1414ee4075e7af90bc41fc4c59
Date: Wed, 22 Nov 2023 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700680696
