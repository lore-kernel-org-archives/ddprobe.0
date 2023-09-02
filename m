Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D97923AA
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEA91C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693641248;
	bh=/fzybyg90sCgQOug2C1xDZeuAnJwqdWA/IIfueVNrWc=;
	h=To:Subject:From:Date:From;
	b=F5dHJmRyyUow1QWzsc4r6Nt7yz7ZbeHMS8rXgd6OtNMNILWV5xxdyMSScD5/RyL0l
	 i4v/6+BC1mlGTqeh3l3g3Xe1ZpsJdsXwSEPOet/avXGpOUOjVZCrcAwmc49J9PRTIq
	 gdzF58SBCNTerJS+XvRRa048Pk4mR6jejNJzrGBBf7Ec428nsSSqx609cfDGaqsUcI
	 p4EgOYnqvG/DcB+sCYnYrcRp+DZqzJfN8xMrXurUJy9xCu9kT/HH0jRA6QCMXLLzLs
	 fyercs/pXJlTzZoddtgjuVOtML9J4laBDUrlML4RZ3vW4r4ngAFhK/rCP7ZfKZts5t
	 rw4wAegT7tHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAB0CA0FF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Sep 2023 07:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169364124874.10957.3813777058525831965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d23f2ae4603ce7a4dc9302ad8c5411fd4d0c9db0542cc8d882f07b6f8ea126aa
Date: Sat, 02 Sep 2023 07:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693641248
