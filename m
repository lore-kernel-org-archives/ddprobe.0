Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702DB7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 04:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0FA95C433EF
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 04:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685248146;
	bh=x+ZRmnAi9UJfStXR94qZzi6C8sCHAoJ/1RU90yk1ppE=;
	h=To:Subject:From:Date:From;
	b=DVMI8zwsHcuzZb25cZNjblckzHsur93jiHpROOGhDcix91M8ZgXaGF5P8b7kIL1IK
	 zTrPhgH/G6peUzEi72sayFZPnZHTTtHnjmUZD9pgoTVTiSCxPk8vKO+y+9DIvIGESd
	 kYN2j/jy0jwzw4ZAUP58/oNrbQzr4SErzttbIk6+6C12F3mzGKaM3oSX+DCxHe49ok
	 +mP1nw3m06hqSJJ87S0Nh8F+6PagRAKZ2Y9/vlI7gaLE3Ps1/VcwMAEGtx7h/kKDgG
	 hNZua9D7aBwL044hYpuzdvWLm+IetmPYFFHHtNVsSpwDQKqgPHaVvsX8oujcauOnlB
	 UIzNfYuiimI5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E57ADC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 04:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168524814589.15754.10778811267111233772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a9dc80cb6c1bb14016f542906538b10f32b51b5de78e97f24d275753d5b1e6
Date: Sun, 28 May 2023 04:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685248145
