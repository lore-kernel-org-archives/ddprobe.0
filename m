Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C794317FE
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 20:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A560C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 20:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663360253;
	bh=r60TJiXc0PJeq3oD0JEWMDbLwfFQxPsDdqoZT7nyurA=;
	h=To:Subject:From:Date:From;
	b=j6oGTPtxT/YgKDHVguVYT95feJIu3qXCniFIUKn4P2Cke3VDAjwexaoMUvL9CUezr
	 SQDq4lnHxAOZK86GqIBDc4ubAkhv5p0dWpBsvuR/8dkOpwiUkYmFAsr44bTEzzZJdP
	 QBBM2c2Vxf1oU7zAomv3vArY8sF/iNEHcSeSttZmp3qsUajgk3X0hk92pbYv63LWYS
	 fJd7zokRCJfClOSnDkbjcDjAGGZRKK9nbEBvpJQU1EMs8RuKqXP9WNNmr4eYcUQF9t
	 ixhbdm8MfFd+DA9HAbZ+deQ4treu0eosZdWuWEFYxPZrPigCXSml1KOQIcXG/QLFTV
	 MYcIqLz7vHYUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FF2DECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 20:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166336025344.32068.4831452509761839648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb68ae9a6e305a68f4a058e58f2e3324321b68144450553453fa5697ac3378bf
Date: Fri, 16 Sep 2022 20:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663360253
