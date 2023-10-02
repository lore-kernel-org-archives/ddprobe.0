Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587447E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 03:46:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3B9C433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 03:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696218368;
	bh=Nx6Re+7MHFFw+ttmUArOFvXg9xKbWtWobNqvhS7Oozc=;
	h=To:Subject:From:Date:From;
	b=i4/99ZiFvIitHYDHo26/AwBxQayACgUYzLonHMDdWStuuQEMnERkDX+PQMft5R1jM
	 ntR4h2aXf+pz2aB4LF3ORXB68ObTjdwGav5oceSgkAZe3ILVuIHK68X5tIVyHUplvB
	 eDzNwOduOoHwfI3Erwa+ytIIVkLzDIyWzmHAHig0htHMzrl1R9kZaAdTysFEo3rOXV
	 PpGKwB1yTuR/k244UHN55ZSCNTo8VYwLNlNiEKz2nK3i9QxmZQuu+T5tQWao49vTgC
	 UK045K+i/TWA6LZ0szqmGz2WVBZNhMH7OXhXgos+CS0Erk1UvhIIKTww2IO2bg4Gnr
	 0Hf/Gxe3FlUig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB88E784AC
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 03:46:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169621836869.20101.5016763964470890857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8598499c47343390e04bb1a21b0f66c5fef4268b564f9b60d4d3aaa6613c88
Date: Mon, 02 Oct 2023 03:46:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696218368
