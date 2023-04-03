Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D3E5683
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 12:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AB1C433D2
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 12:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680526565;
	bh=CoiR2yt+76PJdmzOh2P5ZN6L7ZLYYtkj63uTZut88kA=;
	h=To:Subject:From:Date:From;
	b=XXYKjGUlyhb4iot7wK4Xvc/I7Vd2h6u1I5vc9pufdC910mvTy383ZYSAu6DvSW0YT
	 mSQjiibHE1WWrL/lFC4qSXGmRE7wEHD70eT/PiGXnHVDxgES2d9OsebcZ/gTvgmc61
	 fsiYgTwoq+tZgwSBNZYvf4eZuUJKDUsSl7SAWF4S2xrqpFZcSz6kHPUboMA7+ffBRa
	 u9lBi73EgbcMW9lW2GfUfDstABYWjyBvrS4WqQbdrEO8Kzgt6t3oSU9d1uk0OD+9t7
	 gRpDgTj6qi9Yo6iXkFrePsmN4sPd2gXJjACN0GjRMzCZB3pBjvzz32UrEEd2CNJPeN
	 DOKNmAKSI0R8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9580C761A6
	for <ddprobe@lists.linux.dev>; Mon,  3 Apr 2023 12:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168052656574.30234.1028995114172082039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebed2617cb263fe7869117c67ec6b2edc11dcd62b94ec5972a5de8a58468174
Date: Mon, 03 Apr 2023 12:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680526565
