Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6469B7E3
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 03:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8794C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 03:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695440708;
	bh=+dSDA3/CmPrftQmnqo+NUpif6zpTqaf1GOhQc8jEUTQ=;
	h=To:Subject:From:Date:From;
	b=ZcVrxiHCfOt3u1GBYDwQmjzFXVsogUCG5I4Z+PY7utRNG38NQFk48wn0C/cOFj/F6
	 LUTd0XG8gZ6vF3vfMfYn0t0ZNvBBQ4EKiE0V00jtldB11jVmo0QQSZFDaDLEBEAeWJ
	 62GsjjN+u8OZcEqxPsMd4fNRVJbN6YluiPO9hhT6pYW9elyXswRBWTR1QJ+7RaZYDP
	 0h3ONCYQ4j9fEn7dLzAED4kBJZ4cl0RJNQOHoHXtp1iEpw5LOnAGRPXR7xbdGsr9lh
	 k9adjg8KYwoObaFiRQBNWv9OcbJ4sUmp0qs2K/rm1lP9OzE9z0umIrZCbBDVg3GLGT
	 BplU+0YV+8ZNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B779FCE7A81
	for <ddprobe@lists.linux.dev>; Sat, 23 Sep 2023 03:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169544070874.20096.3100579236647371992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcb9d98dd0181b21790265364a7ec6ec332166bd8b64be4cefbb35d8347fd209
Date: Sat, 23 Sep 2023 03:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695440708
