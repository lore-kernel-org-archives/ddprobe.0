Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3134438
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73FDAC433D7
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664925653;
	bh=e6TNTFgkj32Z9KitB2O9LSFzg8ChNP9IkG3GgRdFE1I=;
	h=To:Subject:From:Date:From;
	b=kldhgJtHX/UVpCQYMhJnx8b6cH1Ev9xEfTAuZLFUxcHhCy7sFIis1rCprevmpVq1f
	 9EZCXBMHN7tkNHlowVl8URTUQcrBGh+XFENUsnZrLA2MTJmChZDgy+SYMW2bU2Z8RL
	 T4IoL0EhuX1Mgd3rI4/XkFZsDgJjnHxVQ7qixdLqVbDLtZjbHtwt4ecTCe6CjwINKm
	 7JTCcUWrd7SI8oZikJzTv4WY8Vq58aqLKcJIbyPINrhzy9Z9sjD3ikgiqVTZUy+PHE
	 MNAwD3X/cARoGtRqbWZabAqISJjCCmmvFyisw8XZ1gjW+qSMp7GIB6T+q5EDc/dLmS
	 i9Mc80KcAgpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 572FBC433F5
	for <ddprobe@lists.linux.dev>; Tue,  4 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166492565333.7591.14645562106538094464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec4348a093f90eeb5616562ad137e3c8a04b9c1f3b532b9ad55cccb85bd0487
Date: Tue, 04 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664925653
