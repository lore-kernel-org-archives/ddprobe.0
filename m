Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECAC65EB1
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkVFQS/n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BDA4C433C7
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701786496;
	bh=RGzRcT7nJouaGXNpLSpH01VTTQvwNAr+b381UBCQa+Q=;
	h=To:Subject:From:Date:From;
	b=mkVFQS/nDB0LvGFhuOo7S4BjvhJdNjyAG36z3LAqx4YJ6WGULZhkWuPCgHJCQ2Wb5
	 y42fswIviXPRrWb0A0598ZJDe90QyI6LqAhjeI316M57CQ2v4Z8pYr32BkuHtzRv9V
	 k4WbDmhOY3yVMjoZL9wdhtC9xUGw0jgvqViXW5wNkhh3+7M5MSAWRB6iwu5v0eA+tR
	 lf6G5W72sIVzFWkeqzWo2wLH07lPbM46wipYBheW1wYyNPbsMI6kkIiGsivjRSRAvK
	 Avs2QZv9u+rWN/jONmAVToVEuljckWaLHiSlU8qYu1ry6qBbjypDDk6A6p6BaOT9hU
	 lxv6qt91qZNGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E75CC4167B
	for <ddprobe@lists.linux.dev>; Tue,  5 Dec 2023 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170178649637.10134.3313291297322266143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cc493f2a63c68afe2c1f94a74c58efd5b3b13b72f480c96a8a1a3d5b5fd51c3
Date: Tue, 05 Dec 2023 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701786496
