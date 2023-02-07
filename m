Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437A520E8
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77DFC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675759025;
	bh=dSgr4RoRFduzp+H6joQZgKQ921wGI/B3U0jc6Ul9vFU=;
	h=To:Subject:From:Date:From;
	b=Fsvmptk8bTS3fFezsfI3ygjAAB0qPj8Xl8TRdyfiW8OgvOBK4RF5+26rtOFAhi5fS
	 MQ7mZUKSwAIPJJraTE3prrm+idzXXcklsK4ODAt6odwVDkK47H3FfPBtcgX8ruukrU
	 t1IMomw9pMHagW4Ybtf/kaEyCMwvAwJjUqqpSiOjRqA3qLqJe14bbItJv8Owes/28H
	 E0ybFtj2YAtcYZs0alRmK6jYibQ+zRTf+7wt4cSD5oCHr+6FMt8Ukt5tsnbPnOIE5T
	 mm+697J1gd3vpQJ/EXTBBgi2lUqW7FB+lrwKxCNvAXdYzP8loLOUKARHm2qXRkNUPF
	 oRJDeAb5KlgEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8FE6C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 08:37:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167575902575.1765.3390618108051173775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1be56b7b5ac4bf93d98e5ed578d9d6057c272390065bc83ea4bb85ab3b22af89
Date: Tue, 07 Feb 2023 08:37:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675759025
