Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C278485
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B4EC433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687542788;
	bh=6qNsQHZhP/2OEeg6EMHzGR5Nb4+hgtjaKvCkhkbUoos=;
	h=To:Subject:From:Date:From;
	b=GgFDy4a0ukGVk8GS7xg8eSMTBw4HCVno/oARykzY9B6+02hK+4fq+mLQH/j1/qM//
	 u3Ukdho0DnV20dqv7ehKA3z43tj3Lmkj7G75taaxhKvt5QPkShzvxQjF/MxMlO6uuZ
	 O1kAQdSpU89y571v6STkt36aXpZGU+FWl8sicvh6L24WLG8uRC4pckIYETXU6fHXtf
	 VZRwoSwkW2/XmdaHVnOqDPLan6WSQmTdSAbzpVR6anmR+7N3pC5GjUZCSHQ0aMK4y5
	 7qEc8QtuAutRD0PmQP3dAtdWlHSvl6+wMtjCAhYLbw5UY/r5yZIHP2hhg1qYC8Zt8R
	 EI5O4T3Fd5gow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2AEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 17:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168754278869.31987.5467538079149683606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44706917762c47eeed9b67688cf0dc33f64aa9de597e845957407d7f2a9d9987
Date: Fri, 23 Jun 2023 17:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687542788
