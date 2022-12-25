Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED360160
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 18:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B02DC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 18:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671993687;
	bh=kfA2JqFM/cUNlgwn0QHU/7y/4SIoNdBMtj2U/kCs+Nc=;
	h=To:Subject:From:Date:From;
	b=sUjLjorNzR2D1ZsdcZD0Ql3WUvCeKmWVQxL4s+rTlBFNHLzS5pFeDWk9RepUO5AJC
	 FZYFtFSGQ6CRAGr9LCjrq7fkXyfKhHtvHdgm6RqmVsfJh1C36nU+uG/nYZzo4O3jSl
	 lMui900rYaa/1RiyCyj+yHhIaeNk/ScZC3RSwnghD2ivY8eCg7EyEbFroeoIf5p+bP
	 N14GO6ZiA2DtTGFIT+EeE2zno0bWKBWifa5Xg2LD1Ue2wxz30qZe0Kz29+zLo46caD
	 ovVzrlLdZxha8bCZCZOGwRAvTX8NTdTFvzxXB94Z8by2lCJav+Yo/R4K8xa2t8o6lp
	 ko+JlVQeVOjdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C838C3DA7A
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 18:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167199368739.14484.6192851592345473900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c133a3d2e634bc6c9100a6e58cc9400e34c172620966eec562600b5b81e9ca1
Date: Sun, 25 Dec 2022 18:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671993687
