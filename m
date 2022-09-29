Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8C7910E8
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70877C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664430053;
	bh=XBPKcFLqA1lfBBNM6uXFUmU8AoyDothr5xdNhOl7PX8=;
	h=To:Subject:From:Date:From;
	b=DLc0LhgYiCo99hBYUCm1gV9pjgrjk1X80Hk2utMZbQy8tFvXq0c+D0M6q7GWg7T7Y
	 D6TWAbn9D5xo2erAudNM6BVY24CHCcBul9RB18XR1EoJO76mDy2kFHLa6nuvWy7y/i
	 Up1xP9Sx8UtcUC42X7E9U5qxoii7/Yr+hjG7lV2fdkqwQLKbWu+RpKOHRHy70hPibB
	 rYVrYS4rKtijljlbASOtIUrqVbFdlV//ERT04D1P1o3CHbyHRAXM2TsvfYRPseceoY
	 lJUnCZc6nmD6sC/5j2e8FOs1A5j5daTVMMiGbQB4AIfKPbM3oZe4Um3WBpDWYG8DkK
	 hF3o84mxLS6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54234C04A95
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166443005333.24776.3749335686817362213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb75461fac4ca236d0e492dd7c9f43f2398e8ba767da9452268d74a31fd26778
Date: Thu, 29 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664430053
