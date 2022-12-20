Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D73E61876
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89086C433D2
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671526887;
	bh=/Tu50h7MEeamSVSrDV2kv/OEkeQNKknck+XUGJsjOb0=;
	h=To:Subject:From:Date:From;
	b=nK5ZSv6O0atPmxDXuVzbchgnTvgjD3xjbyHx3wD41o1YpAN1c/MUtzLBj5SIQz/5W
	 +6vTQzmoEbiN7jTHytuf8l+NIqW5z6v2hV4N8xCzYDbW5fLrXehu/3Q2W+uw2InbYu
	 PSsUTayNFzkFUzIMeo/5LUCDTPJEiTyodGar7vuO5y7oPSIqnHqsYJmu6WDDF0zAjo
	 zIfOYYrtqgLkX5c/pzM2x2yZKx8Vh7ldM8e3IKF+sykkMyVdggwDPedcMX/gWJKSFA
	 amOVlzWtAofsR/pAZRm+YooA282Amb2QIDe11cJd8QsiYBbt3+KFfnGJNNpm+xgvm3
	 3X/FzwXGsuVLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C5B6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 09:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167152688743.21765.9703113816158753749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ffb84a50bfcbfb8837a5b7beff2fb3af44356000bd35f4af8d5483d169a5c7
Date: Tue, 20 Dec 2022 09:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671526887
