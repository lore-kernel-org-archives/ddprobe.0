Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67805125DA
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0542C433C8
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686830348;
	bh=b4ntbSlku1O446QiOVus1OkPbXLX2i5LOIhI0jAJLfw=;
	h=To:Subject:From:Date:From;
	b=brM9MHr9KH2iu0ldQ//Z6BsoBFbIb3yaLpVmbpVVw/B8Plfplz/8WR2ybDTJhqTWo
	 ybMNV+e7oGyEWOzFFOKn/iruIY1vPorpgnvomuuknM89EoUBv2VagvhO8RLHODy+we
	 1xf6Hs1Ew1ht1iHyLWIT5SiCMdP8s87tn9gP6Bnb1Y0CkQyS95MDrwxKAI8RSWzKD0
	 QJIzKTEf4zeFjYErBtb4mTrVqtI2/k2lyPWkgln9fGumqNySvGqWf3185EOGw9gWLb
	 ZlIlY0R7pomJGdIkZ4wrp0A2YsRxmzOkH7n3Fo5YErOydun/gTeARFfaAphbTY69Ni
	 qrvwDGTzsJT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9636EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 15 Jun 2023 11:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168683034868.17121.14477894015186962878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d632fdb83be9e5e1f4008c5177ef89fd7f883263b17a2f2fadb61467905628
Date: Thu, 15 Jun 2023 11:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686830348
