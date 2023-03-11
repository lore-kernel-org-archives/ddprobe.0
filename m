Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C1F7B
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 17:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E350DC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 17:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678557365;
	bh=yMh66c0qPHxqqrTU2lohIzZUuokkHfIePNwQlTGO97E=;
	h=To:Subject:From:Date:From;
	b=htFhN4T17lGUjw0n7Mxf1uK1R1CFgD+lKiPOX46zVS9TluGWHYx5vQp6nt9rrdZv6
	 fNnZebA5kRQ8N72hDDZZ/bEXQzQKBjlaLA2UE8ZzaLyM9kGL1OIeTy1u5bPUNcf6Vf
	 G0MIbUsr/ET3087V4RMa+vTwJlE/l4UB2kWt7UVjG8fV7BC6PvgcEy3q9naLNM604c
	 ptvkoPhhdxWvcXDQBQwqwARHc45DyB4OqDBZ4LLRX9m9qGxidbKLywvT8Aua4zBeaA
	 0F+YbAMUSFWmJrHRr58B8ZWSUrGKzmXSHgfUj2VSdruxaUF7Y1QxR3gLlvSKB3CwxM
	 XSsTiTRhJ35ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAFD3C6FD1C
	for <ddprobe@lists.linux.dev>; Sat, 11 Mar 2023 17:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167855736582.30708.17611765427676182887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89aa1da4845806c61091db942e2fdb2429e8f9191e086eba565d039d47e6bea
Date: Sat, 11 Mar 2023 17:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678557365
