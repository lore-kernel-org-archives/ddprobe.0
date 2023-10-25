Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A220F9D8
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 13:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND+HKQ7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A346C433CA
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 13:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698241096;
	bh=0p56BackFeM7n7mf6Cd8ky1vf8zOjHsBEgQqf9G/6hw=;
	h=To:Subject:From:Date:From;
	b=ND+HKQ7W50dC2RWS0+kF0CXzRxbVg5ia3q3y5GITiBCgOq6KbQK74nqJf2i5Q+gCq
	 KAeRswZOAhC/sqJjDuIA6cy3R/XCmd+84eNgMbY3edZcVrChKmCuJpZTEb7aH2fW+c
	 rU9rKLfSWRSt0KY+Fa/8spn2RSSxrnsdEwK7qrdagzSB03trFdKIvBxoBNlnJ4de8O
	 AKF9LR3FiaEMizyh705ByJjOnBr1Mr+3kgIagcynwHwQKdbXoJ4m5eIPrvwjBZRnKA
	 OGTNueOYAJYWedFDWAltqgXznmcxqFWuReST854UosVcA5rpVq7QDnvY49YZeIhkrM
	 BflgouP6impxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60D29C0032E
	for <ddprobe@lists.linux.dev>; Wed, 25 Oct 2023 13:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169824109638.19974.12104616610899228794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20073029dbc0cf14d36f6a3ce3620ac74f9aa6c8f474cfb18522cdfc0d902563
Date: Wed, 25 Oct 2023 13:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698241096
