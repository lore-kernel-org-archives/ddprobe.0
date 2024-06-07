Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634CAA20
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717784843; cv=none; b=IxpU96WICYzJJQYlwu7qaBkUqFx4tP+5mxDiQj0rksOun4hrvwElg20KpV2CsHiJiB3gTdCYTY3JZn5Qy8+E8DXpV4w3s5h2+p1WyzSiEaO2GF5Lk/xSJgsDm8ulx+2hU2q1fp42QX8+rgMOKze8mObzq0rM93xewThG09SjzIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717784843; c=relaxed/simple;
	bh=oBhH1YFSLTcAkRISbz7gJd0ozRY5a+AKeSoXx3BCV98=;
	h=To:Subject:From:Message-Id:Date; b=UTlcwO8qxSIsboaQ3tiJ6qnJsvImE5KzSUa4WLOneHrCf3UmMzr53jm5SeggNc3CVzj/Qf3AGGUPzu+HCqAM8PeOsNTYn/CP4qftojHhHJCrZo3W61e6xDCgV09sw3I+qJHVLUaLxr0V9lJkhpwNJz+M72+Hc9EbVrQFcW0Cg4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qq3dHvST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qq3dHvST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F19F2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717784843;
	bh=oBhH1YFSLTcAkRISbz7gJd0ozRY5a+AKeSoXx3BCV98=;
	h=To:Subject:From:Date:From;
	b=qq3dHvSTH8lgMq97oPrHEufL8K8Rsu0giwMmESUVgwjm7TrQLg9Yiu3Laqe8l7rh5
	 m8J1MbSA2OcwCE+HVEjODAxWkDAepfmWoer1530v0kartamqlqs/jeRkTkow0sRJrg
	 MapDQtqJZVdIG2A/Z1gEXo7kOzXs1GWkOWD5Zhw1GZubYRCPIAZAnt1UsO0b9q1Ejl
	 h/6MI4wnm6jYUfCsGOC0e0Neq5PNDJLGFpTnEb/xGaniwyCSPs13hxxOVBLg7mPbZS
	 O+dqRMCgrk33rNp9m2MuV9HLGFi+MvX6Kik9XkJqpVtFB5hUoS+PrFcMqcmO23o7/v
	 IHyzkX+cxyLcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE7B8C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778484285.21649.10246710229691345051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21eda74c3a07aa3cbe728d62dcb7039ce97e7b3616726f918553c6b34f49afc0
Date: Fri, 07 Jun 2024 18:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717784842
