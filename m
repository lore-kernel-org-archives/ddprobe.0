Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2A61865
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65EE9C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666861854;
	bh=g+VV6lw3gXqVqdcjZt3IsX2HGn3+MPDZgG4pBfap0s8=;
	h=To:Subject:From:Date:From;
	b=NFDP1I8qCUtXwP21GLpI6Jn6fdkFjg4ZVRzX3CqnMf1MJVLaMjqo8o/osNT9Py/j/
	 KkXFicBv4AJWhojHveAn/RvRzrSzIZOEHz/p4roswabUG+ogEtZob4lBMdYVdHw26d
	 wA6N1DoaICd4KP0q9BCbdhtQxmfweSy3tjf57/0LDARJTv8hwJ5rmj5Ae8tw+9tsf0
	 NmNJtUdeW6mWTvHmBIRSvNzSqX5dFJqNoLFpCebsXafjqpM5272rxCZq5oLMmAteYF
	 W9kcS2o7DwICHRilXNby5LKQDdZ/oXSmcz87EKEoTFgEW/3GWbb/nIA5pivKMXVFkS
	 UnClPNXXFAN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F3B0C38A2D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686185431.12809.2781253930145555999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f134897504f165596acfa72cc455ad72be97b0720a050ac095009a2f8a16fa02
Date: Thu, 27 Oct 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666861854
