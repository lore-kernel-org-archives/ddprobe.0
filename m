Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56974434
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C8C5C433D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663966853;
	bh=/YfT0onMpkc2l2Z6Zr7q8OKDxADdAh/Rmvw05v5fI6g=;
	h=To:Subject:From:Date:From;
	b=OJ2kScw6rpKCJ/8EH9gWifFp66EO5pnVb/iJvy1W8og1FiZIoN2g1HBPqpIRg3CBH
	 FGJb3QkbHZHyj6SuCDTzblIhsSz2AmYvm7CR58nOQZygWzmkxPtxBUHvPO2kwmWTME
	 w2ExXC0zxM07PjLG+LJi9k+K5gn0gXVMSdw7pkJh2y9ruQ8Q8YCsQ2Xl8Btu4B1q2n
	 CfblnoSUurPwMQOnla8+7jC3OpNGB5wZUuSJtDCLSsSTr9a9UHRSVAygr66OWiyA/9
	 5vhGtC9SXdTB3UQTnc3OX8kPUq8qKmX6RPQSE1l9mxY6O58u1TNZ28/cWBxSkUWNIq
	 FoBW8CLs9uSHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53DCBC04A95
	for <ddprobe@lists.linux.dev>; Fri, 23 Sep 2022 21:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166396685333.23439.15840676576772815165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e065cac1a4134f5cb59e02a666b68d901a7e5d383b0f829e7cb28b6ea11d7f
Date: Fri, 23 Sep 2022 21:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663966853
