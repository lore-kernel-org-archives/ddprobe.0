Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E8A18F61
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0jU05zf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A97C433C8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704130696;
	bh=UUuMazXRCofZ8bhIuQK2fEyM+NLsx0AU+VMDHlAsp0U=;
	h=To:Subject:From:Date:From;
	b=H0jU05zfNSHHeMksA6M5LVoUxy6du3RhkizGoeSQK5hXOqH4H/uzDNTyYYiteEzrp
	 mh717I3mxD0TYrBK0GiRvW7Y/bq+XY/5JtzbnYkMQI7h/qkF+J3w89F+DIn7H39/K5
	 GVOHfjxUHydAcnkSyRp135Xtz9ZLfLXgFgjC/pCM6r0BAF+lMPHxG3OJfXHwCeeWev
	 dnd1B9VncdbvfquvAFEP+9YPc4oe4gyxLrDNFcMlfHN27c3k4KraxaTeoUAumeOopg
	 oZEk1bgijZaTHGiJ/LXJN3jC0zJNuCsWAbcQldjkNvaqhHN9m5dGfLAeU4jbryEHe8
	 MSG8yhaz2LuNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63892C4706F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170413069640.4653.10183919611797601233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb54fabbc4fd435f2aaf9267bf882f9575f4e5b146caade2bf27b6889139340c
Date: Mon, 01 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704130696
