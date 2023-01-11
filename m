Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD8FCBD25
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D2BBC433D2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673473887;
	bh=Qb1vAZWzVDQDHARoewxgSqAZl4w3ZIlze89SPnMKx3s=;
	h=To:Subject:From:Date:From;
	b=kU+3mg53EQyUABqLvh6Zj9ueBspAeW5atEJ6N2pdz+skh0i8Cewp1Mc5gwgfSljI6
	 6Qpdc0SjOZDcjkYk+5dedBj702LImdUdsv670DLnAFH+qX8MH1bd/RC6G0SreAe2ku
	 4X/0qc5ocxh7aVlISTD6B5R4hORCgpHhypt8kLoB9hqGCqibUOtfZ4x47lVXACLy/H
	 LdPxdhjbIXVAa51rahm+45otubc22MKz7+I6c7DLQTbU0mBYWt4FLP3qhvU244s0Eg
	 LXUf/6LO1ActvMVWxjr8hRtvHgqsV8RcrtQEmerIEyrmxH0ClnIuEguL+vaxdVkyFC
	 SP3gO3GtaBamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75D8CC46467
	for <ddprobe@lists.linux.dev>; Wed, 11 Jan 2023 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167347388747.18121.5576773808195883640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae6080e0ca1e26da3422de60c7095972b07de83fad1bc01029bf2b85ec94e14
Date: Wed, 11 Jan 2023 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673473887
