Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C465936C
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BEA3C433D6
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668825654;
	bh=VPpQ/GBBTVbx2yrX5tRTzuls1RMaWG3tVjhzwqL1NbE=;
	h=To:Subject:From:Date:From;
	b=GRsyhhF0fkz/3JjiwYFZgoaGBuqm3aW+6OwK5wkdZUYkudBqfTMDT/MEVocdd4aO3
	 akog+BneC6EdCtQL0ufAcqweV9ZQYPLZVVH/5TC450ygjr28CJJVqo4TsYqfuY7StX
	 bjFSUPobbXZphiTSnxhjeXES2Gj74IqC2m9jL6mE3b8rSL41dZFOYPe9JCYkfiHTNb
	 vuvLUkwcfZCEuj0R9tLNIGPTfrGedsHDtnhNU+NFu80bwIBhU9ICIWab9Uqco6U9UU
	 3zBQjhCNWlIxtlFnLJfpKP9SfhcW3FtM/1KijINcBXSab/yPMRPzGtUoCCUQFGLsyl
	 BuCn50zu5oi8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52190C4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166882565432.9818.10542970025010449499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e79f7febbcbadf52844b43cb78f00ffaf7624489ba46243b709838030aef80a9
Date: Sat, 19 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668825654
