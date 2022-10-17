Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF76F2562
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A8D8C433C1
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666031453;
	bh=WWsURiGYYyNFmCpPbK2LSAaeEn7H1ZvZ5KKmXXsl4Zs=;
	h=To:Subject:From:Date:From;
	b=rLl2xwz+19decS4U/eM0QLwL2VZEtGLixqkI4HxImEXNs8SVbXO6R3HQ0OWHug+mZ
	 b2Z0wCEdUf7lV+QGU/bZILaXNISriNsarC0eVjAa/boEHqQtVBEFwluBV0kIpneJ60
	 yvt8snyFcYCy5kxS/PGwOmZZAjJzlr73gYq3sUwVk9VG0vCMz6EXAhHkINW0NVfz61
	 6/+A30v/hyGBoBJ0JaZ6amyTKAx+g1Gxcifp0VOpUrPE1NaRIl2ZhJsUFZNf7Chc9K
	 M4JujORDHtZZuRq24P7BnRUrTDegVN7+/6/7Mt4XgwO/coqk62w6iQlFR4YRHuFXqz
	 o1wSRuLRY3IFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53802C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166603145333.15262.4697315424718657583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1befff2d61609f0b6179a3ac35488420f308d501d61f8744993e1629b14c8367
Date: Mon, 17 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666031453
