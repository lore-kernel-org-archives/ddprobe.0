Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B951E10F3
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3CAC43470
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665246653;
	bh=uw4qM7o13e6M74jNwUx3+nbThciXacX3iH3a5KqKWe4=;
	h=To:Subject:From:Date:From;
	b=tY5S/c4D+cj0GphXA99nXECL2qN9ckvO+5nqZ2K+JVfyqAVKg20uHVzcdEhcKXlAm
	 sdESLWBdGFcx1XfhFwrq+IZwZFwLxLeskTbTDd0jg23DpmN/DbJJjFQUOyEWrRG7Is
	 2aw2WW0VqQ0/Liy1brrXKyR/nbi0LDbpX5R6rdmtdk17gakU7Q2hUS6S1C2WtjUK1W
	 F9zcoMnMcxrDEQNFxb+nLxNqmp4yc7opgRUzS/KoASdTRWFiFvxvSP6VtcPfiNqZH3
	 kN/uNzuK0pcW1lsDYXbnJrxtUT0jOiiSsiXJbmCqMgKLugb2rGJe2H4XN+NWUYCJq7
	 ASqzfFmV4nBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 554F2C433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166524665334.28927.8917477889234668776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7d63c5fa48e82a97ec496617a775c82acfd136145e9e426aaff946d689500b
Date: Sat, 08 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665246653
