Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA16E2F39
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7487EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669506654;
	bh=2rNiJwwoQklIx2ZqeQ8k2/XvnoJ4RsjwLpcIE1v8yOo=;
	h=To:Subject:From:Date:From;
	b=SFKmQPYFrYaid4vZzZa46890Z4LjCWfcbYwO9Ja6Bl5a8NK1a3ZIcqeXBrknRPqTz
	 t+9mq1GEdFe13JyhoHC96oNdc/LDd9YavEJv4pF4IDM0m3MBZcyuH/VV0EFVEleknt
	 UYoBM/YLa1LcQ7pp7yTi9NQ62UntEtnR2v+kFdwE3JtIkHhByvsCLw3AgGUG6+r08B
	 /JyCxBA5GTiS00n9XrQ3ehuRqRRP3dWhbdWJtk5XR96oS/tOyBsnAKZ22BGgHevgAR
	 cy2X80v6yDo2sWHCF+9fnAlWWnYAM9SSDMBzPiV0136JcwEu0hucGbDJsRvbCI4eI+
	 XXe8X9MZOcang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56414C43217
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166950665433.9238.409131581741212578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3aa9aaf225ace670ccc8d3deea6caa7ed04df4bf116d764a0eb5bf8cc979abb
Date: Sat, 26 Nov 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669506654
