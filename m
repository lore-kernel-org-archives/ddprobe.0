Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F29233FC
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 18:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC4E5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 18:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677435965;
	bh=ToEtned+Dn0t39jU7zcKxDgXrqSxPPvNtSUrDIpvzbA=;
	h=To:Subject:From:Date:From;
	b=MU3stYGAYWiVzfCYzLgLgrOvK8coVUs9Wxv6/FAm9h5UWANnUJ5vVWbYQSPgZ7lD0
	 IQ7mUmnKAPEuCnTKKQvFSviVgDMj7yNkI3M0/JhK1idhwgXOdptYskyGfadAN0scwr
	 qt01tjt4DDgdmNvNXqFWsbkv3qqVm3ftafsnjfs0oSWP9rT0ozpSRtyM1JXGYRdqlV
	 s38Ve3z7qkGFMOuwXGt/xBNkjzqhldhth3b8OKBfMdQ93kLHYqVZkWfwA6EPbh0nKz
	 SthYrP3xbtYy9kpAU3kV7yGYRXFq0rZcBJgKSCv7p87AvCFr3jCkjuraHJqfk1rTJF
	 0W0HbP2u0r/5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFF13C6FA8E
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 18:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167743596577.29120.7376359766797029737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc13377fe2990adf7f2063a1ac99d9b509d28a9dd0fa182d295bd53c598fdd39
Date: Sun, 26 Feb 2023 18:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677435965
