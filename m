Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7343A1377
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 20:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1263DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 20:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679862126;
	bh=U4Xu7ot70C8dLzOaJoUrQYiGdJQdHjoOqKBEXECW+IA=;
	h=To:Subject:From:Date:From;
	b=c+/gfz0qobPrTuHHSnCoWVPulqHGWem0bC0lvKgve0ewp2Gb8SskJ1U4gaYqRbD4g
	 H4Yhj5+EQuHiO/el78hkBMuVsKtecD5iHZe5wgj4bMx2TAeg/W5RReSDwTwIhC2luQ
	 bYDMnVhKMLtP+2Gdb+Sf2bBcMMmLQFO9Q7fdbOqLvF+V4uDoz7eJS2qFHXEr9q9ku/
	 qi2IRqrVEdNw9l8m+kLe03oafhyZe5qUMIaYQvJkS2xaapg6eNLh8HhvL2p+vj/wnx
	 IhgXsKSkK8ZbepYxcKiUXO/7LYEnGuMCoHnMg6Gzx7xEDlgGUxFpcxma9ynovcBW27
	 Dve8d8exlvomA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFA5CC74A5B
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 20:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167986212586.626.2842431827167047664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a83088977a63ff42ffd85150c63afd2a2746956ee062b50d806a9829d8fcc1
Date: Sun, 26 Mar 2023 20:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679862125
