Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5A922C9C
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC86C433D2
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672511487;
	bh=jx5boRXxSqjQevToKNxkLvbW2JhCMnAQUlkGP7JxNWI=;
	h=To:Subject:From:Date:From;
	b=Jh24i7JfeENoZGp2ClUw3CoNtHgQpjAnPdgK9ICPh7q0r6zWqAd3YjDqa3a7Rsxec
	 MRd2nJUmMTs33djTS3/SBqeJ4dvyRskhjCNdve7psoXeOTpIr1ZUhEv1xFkOKfzZrS
	 KNfNhN+Zb2RDBhUDDr8fkYEEmgxSui0B6YpZCSG8vhQzZ1LuEjEzPDgEh0BaSM+VSq
	 ga+bSL59fOd0MQKeT5lpz9fpfXOke7p3uSg6IIm0iCmD0ps3uNE6zm0zfZr4Kj8316
	 Z/JiENfp2JIYuFyjQPvwRw/80ijttgwvnZxV72JZBwNJxX/0fh+J0ngZJMXp1OG8ah
	 MKdUplDoYugfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 681FFC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167251148740.6640.6785777805209716441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fcdf7e22065d3ff2fe4169af2956230e4211b2f79e7e5329c01b0899acfd7e6
Date: Sat, 31 Dec 2022 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672511487
