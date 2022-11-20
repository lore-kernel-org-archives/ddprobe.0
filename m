Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D72B264A
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DF30C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668921654;
	bh=I8RvtyEZ5EKF6B6sNj5VZbIfu36loQi/qfl+j9cqIiU=;
	h=To:Subject:From:Date:From;
	b=PD1TEW3e2QDtc16v10zLh8RjXPCtw4lP19YHcAnoLkWMEZEgsG9r+R9OVZBt3tBKa
	 kSmtVubtb9i7ZUy0v61bsB8XY3GpGlYNfhP58++9z0hsHuTslLZW9SVgm+DhUtGvz7
	 ZuZWAgl1xUNfDbN8uxKccNjUEEbPRtwcg0QTM4X4XEJERZiyZYuM/DTocypAvsMgri
	 7K4D+vF9yzwbc6g94NeQJB8PfhNQQD6gOy6TnLslkAvnTgqTzMm5TSV9HJzAFgeA5D
	 rgPYWKAjpdxpFvBADfe3k0favyj1/IRTa9NZqRZrZtQip1MstPeQiU2V9Ix7vVPhNy
	 vGR72ylFUqSaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C3EEC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 05:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892165433.14591.18062948129822301481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cefa7adf703ede2a5beec91a490f619093209ebfb5cd0484a02e8a23d5203a3
Date: Sun, 20 Nov 2022 05:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668921654
