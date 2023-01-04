Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18E67C
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 955CEC433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672801287;
	bh=kipyB6D6hBZqwlPluAQ76ABjccDZsJb60LcBfnglMfM=;
	h=To:Subject:From:Date:From;
	b=ab+HrMA+104Q7VW7wX1SoAgvVutX74p5J4H5lD48jRbYGxTH043rRXCDZkG6hSMrl
	 bn78Aqu20AAGb1ePFqRC9D2Xs7fnNqz042WJ0VMv6+rgVuAYFvDF9PAp5AxTVeoquc
	 VzPeRTVU8vv7dlYNsyDP3b4kJV5gdNq1R5pBTadZNfVne5Eecdg6a9zU5whzA5f6M8
	 LXrS7+2AiN2xngn6QrNhJYk8jjEqrxn02ehGXpJYYDnKRl5SxWtX0YebfeMo6q7YlO
	 U3oQ0DZBLHrnZtF9u/cBc/+AuWjRRDCnPHg3kksjK5tY+S8nWtF9iFYv4qO0cXk9UT
	 OpvV8/lLh7eEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74A75C3DA7D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167280128746.10824.10138842979601065513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a2093cb8cdd4a9cf2275efd610fff4981923c994f98a7ada770d196100ffea
Date: Wed, 04 Jan 2023 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672801287
