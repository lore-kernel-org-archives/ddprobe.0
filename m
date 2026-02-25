Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577EE317701
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772055894; cv=none; b=KMGKhZO5YQn69+sMAwX3xfc4u74zlmxVxD/fbnjkBr/UiCdFSd+rxg1jmeqYwdXD49Lt7qEoJPyPsHLfYSFX6beq8c1GMX0JOmGT8jPPvjfmyaZbAHcTJyWlxS3Ja17q7r6+ba23PN4MOAX6q8AaMpFhgC7t/67R7ZuJq4e2D5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772055894; c=relaxed/simple;
	bh=75eWRW1Ne5iqAp3R5Fx05cr3W+aOR3nV9eTyX1E/vUU=;
	h=To:Subject:From:Message-Id:Date; b=jIfHwJcnPTrHie72VMO54mtgI7uTpkEc3hENrM/1gzgT9F7Fy1iEPRFgs+mUwzbLgP3bnK6Z5tvNNtizoZMECuh913jzVXyp7S9+9ZAMy4FY+RhAKwdGo9MBWXI1Bw5cT2ZI/T451YdsmQI3Qkn3f+hzBMMa4iUUaIXHSPrlWfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cPhNXLu3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cPhNXLu3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BC6C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772055893;
	bh=75eWRW1Ne5iqAp3R5Fx05cr3W+aOR3nV9eTyX1E/vUU=;
	h=To:Subject:From:Date:From;
	b=cPhNXLu3Mzm+556Jw7AiHZUrFy/7/6uGBvV9yGtE0wblfRMf7HAE+BjBD6hncWjnz
	 dA/FDPdimFAwIM8/FDIAI882KFukwYt27vxhfvLrseM8y0kqDDGIEvrHohKFxUoITQ
	 p1BvRfPHjksTAEU88IN0abjOr1aEwkcGwWchgz04+OKJFCXHVM8y+jfO4Zedq9UXCz
	 E8GxXd2no5n2Ibn6Ccu/0c456L3YJFKEFwB5QLGCCRRXV3xRV4ckdhAHwNCGn+IlDu
	 FCOOGLquQU8V7D+TusZP1hx29Ni7/G3OE4xrKYycpLRCL1oPDtHtfuyE8GAhhWSxeZ
	 0Niq8f8vupgpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0A4FD45F7
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177205589368.20993.9902834636615122474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc0934ff7f8c996fe046323d34f7896c6ae5757ae671a750c219e6c801fa2778
Date: Wed, 25 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772055893
