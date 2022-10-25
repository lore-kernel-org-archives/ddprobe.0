Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD2ADA2A
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69143C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666676453;
	bh=7nWOMFiSYkaexTPFIPJZZXBJ9cQKEzdaOwLRjJ3YhkY=;
	h=To:Subject:From:Date:From;
	b=qWN5/nkwQwG/RXa7TpA052BNAWf+QKu1YB9mByTBFKvIRede70IPxmpYRzT8sg51i
	 nwVRtwaLmy4jziS6XbNx2nLcMoXlG9FyBiDtoQlhATGBuMv467pN3w22l0Ese3DJUx
	 LkL7nMts88TJ7yePJ7xzlwVH6Ni6GWVwTQCxsvTnOwaM9boWquwKn0CQaiET5bB8r1
	 pd71fvXkbK+9BV2uZ7ZJrH3Zl78GMvZfBg+YPg302WTb4R+fKcfCPFCGkJgvHEuMlG
	 Wb/zs7kyIYdoRn35IGZVItXpHlu9kuOZvwp0bdovfzmt/WY2vMKf9yg7w7UyEcS2AN
	 kFdZ1XegFIePA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F416C04A95
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166667645331.27560.17847809344549293086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be319a9629e0f0ffcef1b1d8ea64c0d0e73b563d193279f7dcc65a82cc9d8ba4
Date: Tue, 25 Oct 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666676453
