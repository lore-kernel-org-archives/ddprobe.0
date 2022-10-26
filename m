Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22332F2F
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C324C433C1
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666810253;
	bh=WMxYmZE19N9+cdemAYSyzg/GxYQGqY8VHRvh4MnvQEo=;
	h=To:Subject:From:Date:From;
	b=j6btT+ICUKrDBETSqgbwlcgVeromkSkHk8boVXtq8trXqfk7G9TeRtyMOOY0mDLn8
	 Dc1A1kR5IA7cwnXEK3R3ncNZLi2hbhSij4TlicXLOJXgDICqc8BeD3ZCIUssbu/M5A
	 TfUha88jUdnopO9vtwUvc0xAQFEQTe06ZTzrWD7Z3MEs0lj0Defrz0v2HVtT7KsEmi
	 xJ6L6J/yx7/DOy26zx6S6KBVEJ7aAejaRBKvoCft0+3VZHuGlTN4lVIBNkW7wpUy26
	 FfRFyo3RKdxpqgGJ9JBZHGkeWRLbrjzP0HlFHCE1OUVuggMSsljQq9/9qVQEpFQeTJ
	 QTJY7UPKvPqSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55A5DC433FE
	for <ddprobe@lists.linux.dev>; Wed, 26 Oct 2022 18:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166681025334.9694.15084859696327536319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbf6c0bd6f07146ecad488e444b62172674dc7d0bac301777af6e21d0bc5a3bc
Date: Wed, 26 Oct 2022 18:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666810253
