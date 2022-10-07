Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BD97E8
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 689F2C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665139853;
	bh=faxxDvdQ1+2Hp4YTpwHkdEZTrlwYjhTOuUyYsbeAFOQ=;
	h=To:Subject:From:Date:From;
	b=nYzPzir8G/tEdnQ+2kIIoQDHywGvaRjNJ2+VNhAiAQ/VD7XLGRKpb8hSa98N1RCrA
	 8tBVwWmW/0j8yZeUa4LEPzHNQPSMREU4ZyMYD7Bi/yhJkHPL33BBxIFptHOEQ6Wnla
	 mZ0INIp0uvfmIx/PTHA/TRZs1tawubOKPNrBS8zXSd+zmaUlI2gQddacjldxkbuVb0
	 3cF9D+/pwEfIp2vI7tFeIKbND8n4xVXkLptHNBucoVRsHYUB+1CpaNgubxTzkEp1ei
	 VHEgXZLjCBtWDkfVDAsFh7RhRlxPxRMqxPKpSK7lDavU+IeXH4GiJhsk9GvrZFFBMY
	 kbY3JhydSEL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F7DCC433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 10:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166513985331.9630.12841387324870610382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b4e8316718aa613815e8e9192022f278ef58004a6af7094488fe773ee6eb81c
Date: Fri, 07 Oct 2022 10:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665139853
