Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E88200BF
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oc4yhg/c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79456C433C8
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703255896;
	bh=4LZcOFclVKfkYBKQvve/AEC1xPbl7HdI5a+CM913Qu8=;
	h=To:Subject:From:Date:From;
	b=oc4yhg/c8LsA7xTlr1VJDWq3+PHDFwyJbWyyJOSxMXl+6sJI/Ru+WbalqKbpQQg23
	 twX3LB2GpIa8MTftvnrr8jkc6gF+7gF2BAN+SuVxYr/xpNJkzxcexZBcecrGo+Z1vP
	 unN9x6/qgulOy2YQOxEkjMl0ZtRogffM9FVuQxpio9891/uJpO3DuTcHBcwXXF+zu3
	 XGP5Y46LzthaDAp+wu6TZAJlkhKy4XgfjIZUDgoYWeVwldTvvLfVNTaHvrz0x80Dzw
	 5fcKQKftm897nqL6YYpEhuKHm2AvYKSLh34ME7pL692nchNjPji0NAinyJi+G9m043
	 3JuRgFxTnYEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EC87C41535
	for <ddprobe@lists.linux.dev>; Fri, 22 Dec 2023 14:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170325589637.31169.17625339738873783477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7269e0ba84c479d154cde2d72a0eeaefd41b27412afc92b550727a75381257
Date: Fri, 22 Dec 2023 14:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703255896
