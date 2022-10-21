Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21B73C05
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E73AC433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666369253;
	bh=lQWHaGv3Vy79ykLXmFu55RLwzUvJO5yA+ZKRfaJAwmc=;
	h=To:Subject:From:Date:From;
	b=RNYiCwpERRz9O+pDdw6eu9ta4ecFHQKR6Lq0hpZM9DQZwz8acdGzDpOFhLBZ3mwZs
	 ADOFCNf4GuMU1MRhrD7ApTZWBoMLb/eqyFedeENds7aYvJWrg6SsdUGVwelc4G714X
	 09iTTIcS87LoiD9Or8DHS6obbwImTsWpA0vLoziyPkbtpo7euXckCYCacSZGFlx/2L
	 EdyJhulMyhPkCk04ZY0w+NIyn9NOxCQjzr7QHM6RAk2aEDiATQi1LGlfZL3dw/UbHc
	 lYiHirZwa7AvGb4ggNSTj7oFt+1wUZqnj3W9/WwBhlxo6kQk9lsn0z0WzBWGAD+y5+
	 mGtjLvSk2LL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53FA2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166636925333.10795.9487301124154935002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c516b20f1d1c6f679cf201c8016cea61ef0d854907623d655f9737d59985772
Date: Fri, 21 Oct 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666369253
