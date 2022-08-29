Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C45FD23CE
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 07:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73A7DC433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 07:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661758252;
	bh=/bjVcIWyIijjofIG2k0Qphoyz5kj6H9RiIBVzjTN8AA=;
	h=To:Subject:From:Date:From;
	b=ahnWVc4uwaHxXeE5gMrPatY8H9uPIQLJ+UXE0KdaXJoSgtb+XW9HF9QYNAniXdL6X
	 bz9bDRLMabOGfOUb2SGV+Ar3BOIgWfeM6uERP0MjmJC5BB4cs1vepURTBp2GKEs28f
	 ddKij9X+3TLXHzCDmowdvAIH2WV72JEkWwyICiW5meIhth70GO2/k/3vMptw7B5+pM
	 bp4dO+6Ywk6XoMYIRN1cPalpw41Kw8ApKrViqhEl9qgbfV1+e7pjvd8zAte5NXupUB
	 ygjELMVuXNySfaLIef6NB5D4jTH93TIak1bGieCwqp7+w9B18UG85uneYy1JzC2+H3
	 8l6G18V9y8+1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5556DECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 07:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166175825234.4186.9935568700919543760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d93ae7b336160f47ae59d80b87ad94cfe21850380506668e1efa45a2f0f0a2
Date: Mon, 29 Aug 2022 07:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661758252
