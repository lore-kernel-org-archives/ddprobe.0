Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110C72F41
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjiXMfKF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F58CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700983096;
	bh=CQo605b8uFJ2ExwwanZWf4+gqPMwSMlWPCrBqNltWsM=;
	h=To:Subject:From:Date:From;
	b=XjiXMfKFbwXfFqbJmvHg0BAb5oGdAxbuUOEMPjI9Xcay/tj6pb6L8XFSzb8eDLIBd
	 AHW658nagxGFcgDmvlLCPb6f2SjTfP+g2zBs+X7UkmzaLbuWpl2qYRXO3bzzjAgxQF
	 4SKiVauujBrU9mWyBHkVrAve77YWeejAoXH8HH0u3d8vfeKyX6EQyu4VbchJFOIpKG
	 JckVQoBKUEfTOj0t5mtnMLVZUUTcd8xLcrOXD4QDYwm4CO2OZQYcAtk3VDIvOnk3Fa
	 QGt8y4qtw53xV0sXBgmwgg5+gYoBaQ1eyRLk6EPBPNK+ZRcjkOuGfTo3lgaQkrphcy
	 uPdc0PW5O10vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63E31C4167B
	for <ddprobe@lists.linux.dev>; Sun, 26 Nov 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170098309637.2563.5649140613426598636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c350e10dac65d944638fb5e9d4c6cddc97a82deed73bca0290d120df78281d
Date: Sun, 26 Nov 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700983096
