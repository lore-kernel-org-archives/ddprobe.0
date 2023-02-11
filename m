Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A4D03FC7
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 18:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4F71C433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 18:24:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676139845;
	bh=tz4S2mEsMnC7XdtzPiMCW7KHk2+lPS0p4XANWsR7u8k=;
	h=To:Subject:From:Date:From;
	b=uVMtyW4n6PzYsdC0kzYiXA4a50fjr/g/9DBXH4AyGhj3PZWfwRvNI0Y09XrVCSGGF
	 u8IekG5gcgitu/K2UYbMxar8k0myjGieQqXxjIuNNJlLLlXje1YXZV4AmKcVrYdJoo
	 +PybCWAcpVgJl+JpwpMMwoMxDAOCJLVwNfED2KXur3aFdZeS1WktYlljd+reCJ5xAp
	 HB5actuI46TADByEQ8Vs0AkgiYJ3VjoIm7xyk3oC5n5GZzd2NuzHtyqWcbdgXMGnMt
	 ZOkdTLs6WC1o52J7B8RAQWsBlBcg3AbAJjsQOqhVVvDzG9H8WZDDJDBv05wc+Y8F+1
	 xVR9lqbhPzOSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B809FC61DA4
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 18:24:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167613984574.10941.1164420516079413011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b323f00474e9843feb237c602c7a2c41e76ea6796f5ddc700f8ca6e34244ce2
Date: Sat, 11 Feb 2023 18:24:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676139845
