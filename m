Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542EC1873
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 04:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A14C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 04:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686804428;
	bh=LaeRfuLxkaWSiRcMToZZXdpupXJdA4oyGj3l971iC5s=;
	h=To:Subject:From:Date:From;
	b=K5Od1uJ8uWsVjlw+Jg1cIFO0mQIKbpMelmRZf+YRYlmWX1VE7Dqbr3bCW3bH1YlcX
	 vulq+SYXD5vmRVHz2mbIvYCcogx82re2fJtisAdqaXASJk/qINCr+1ZykbOIrJUjT1
	 zPgi3GQGFONLlvw5SO5yb12NSmjrXilbGJG/UL2HHtk8Si1wAA7g3eBoCuAoMq/6x3
	 4fg7jnUBCsMyDRK9ijKeORzboXVZLK5XegX2kFrgNPtG9M+RZXJvdeR96Fy1UoF+3n
	 ET+jYmCw0kQTRHEpFuzFS5QE6Yu/R1RsqHxro2JMYzvtwhlUDntoUE9MstEBfyhe+d
	 CCxtG2vL6YWog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5814EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 04:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168680442873.22972.9957411367060773357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8194f5c7233558fc4c3cf30a077daaf509f51a39632d0c8eadafe6f3e9e77d67
Date: Thu, 15 Jun 2023 04:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686804428
