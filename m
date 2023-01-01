Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69097E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F352C433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672537887;
	bh=V/ClUWolY7QCMiPlKuEN724KNN5Mml78W3Y774C7zvY=;
	h=To:Subject:From:Date:From;
	b=GgyCMk4RQdD4oQBm+Pda0IUFOzIKvh5tZnnZ4O9z0pCbqvrfaSpwi/sAJ1c5kKAOv
	 m6ivkPtmhaUqIfFWIIJacU/KuF9Dq2IMiJITQ4tD9EN5sBMm7DeTAxJr7msso7c1q1
	 2+lUvxF99Uor64jrf1weF/2JFvaTBFY+iAofhVw1++jAD2+UMqD/eH85FSLCJVuX6m
	 VNBPdtur3sM6Ixm2/DUsdFJjOjo/pXmc3Y16IwVpSYSsQBToaJ9bIL7ADw+89mmMSN
	 9aWeKJ/xEQfRAb9m5bjf9znz7HeE4jAHhmInKu0/FoRsLY2rWXpaTIBDSmqCbdxwqO
	 l6lBUdrQAlHWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606BEC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253788737.27683.14632453266366693661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62208d99682f954926a8f3e08c9d22f687be8099fae7826dca32c3d2f8e6b416
Date: Sun, 01 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672537887
