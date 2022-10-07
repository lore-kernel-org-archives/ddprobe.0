Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C877B7E5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B3E7C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665105653;
	bh=4hiu0v/USGUHsQsDLjj8aeFm1T8IpkpDvm0ykOK8LG4=;
	h=To:Subject:From:Date:From;
	b=afCABHkrQ48SXJCAQtALNPeKedDCSnAZwhOQYBWYbLz6NNtpE+Vd5aMv0zKgXlNE1
	 nu1QQsDkMenA8E8Dsou8/BjTmcDpom5kRS9DWY4AAONvhpI5EO9I04YMpwfus4XzB9
	 DiYm6z8uAOt6MgRBiJfe/zmlvMDECs/uiS76yUn63VSkA0vBJDsHmNydGfbCHsPYd8
	 0n6ckzLRuchy1fNwlEcTg33ZMowVt3L/66Xg8MZv56JmOA0av7f67NZvFEfFb/PHNB
	 CpXv4IClwBMqzuoM/nWLNBjSOclzJxkQXL6cqZ1Kk0hLvHym7ovtcFjX4lbT0tEFwN
	 kqt/FcvRq71Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CCADC433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 01:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510565337.15490.3694235626094688492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d691ff3f65f65287cdffcda119c7f7dbdf965e90f2c60a6403e0a55dfe44d1ad
Date: Fri, 07 Oct 2022 01:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665105653
