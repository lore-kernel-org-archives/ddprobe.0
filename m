Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694682F21
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC052C433B8
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694529248;
	bh=Cfakom1KnmdrnxpEQq+9syE7dXK0/MPRK+uC5b+BTNc=;
	h=To:Subject:From:Date:From;
	b=tvrvNXH1eYaOd5s/BVWluV9/KmK5LaD2l5zu0nSdw4/Dpukozf79UdQ6rYOXaGseO
	 7rsfOJqn4w/6vvBbbAlBWV1SXui0Appn3t1xLrSCHPitBhM5aVSl0ZcCzDQelSkjAE
	 OTXLoNRr7yqJze07yb/hJos9kkL5G1JYc7DhyxapIgp6zkQFLDaeepqVVKkOoFt3KW
	 qU7TuNYU+SECzx4kXmSHNjzdi3vMUccy56EoOV7W2JsDvpUEj8lZI986DnkxXcEngA
	 ZW3N7W+EDpUxL3kJQkcX7MWyR8PqJDcPV5o/fIhYEuuNNoZNBmEk6sFdqYatR+J4sw
	 /RYUsUWFbBWLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1207CA0EED
	for <ddprobe@lists.linux.dev>; Tue, 12 Sep 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169452924878.4995.2774607941014633717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9a8b3b7cdd0733de2d17ddf1d299067a01a4521d5cb084ee5f6b528846ec69b
Date: Tue, 12 Sep 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694529248
