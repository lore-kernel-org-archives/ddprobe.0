Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E97B360
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 00:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83FAC433C8
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 00:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692405248;
	bh=+nRQ5iTbKZhCHOnVhuof33p14lAw9eqVcKzjpHC6gl8=;
	h=To:Subject:From:Date:From;
	b=kNFX44TleNxVfq8zEs6nOyvkk0GwyA87QfWFBaUAPzjCl0t9FUht2LdlMLLYvm7fD
	 9os3OawhGqBeqwIif6iu/HzQCKpls9TDPgtlCE0DI/ToU0L6ZlyJViR+cn6kqT0ak0
	 boSsmiOOB98X1mVXFr9NYvj4V1U00Vs8JoC570m47G2WcKAHtbHwe5fBtwvjXsJNNa
	 qQIoFpHA08qmvzq1tbp4v85f5c/lDTIR92VlpeFABPZ24MTafGfrLq9OJ6FrtkF9vI
	 qm3JK49TJY3WxqZ/UL1mF4/dXHms7F9ogN6R8l0Vl+kCuiq7ZZQk50k0aVmIk6EA9u
	 l5/A5ItQ7tpVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEAE9EE499F
	for <ddprobe@lists.linux.dev>; Sat, 19 Aug 2023 00:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169240524877.21974.8047057540834566380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37a64f463b2930bbc234fc570315c05c21ec6d3baf8430cb41475c4ade24e12
Date: Sat, 19 Aug 2023 00:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692405248
