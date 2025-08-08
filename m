Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150AA25DB07
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642394; cv=none; b=TwBavLN8IH7JOPU2ec1mthhGzWl5YPe5X70y0+tnq3B7+mjQl3K1O2yO8C/0lWdi9Akxlltvt6ZrEfcXMqrTz4vDtk00XJRExcFjcPtdPqDjOvjYG+vRrew41Yf/UIVFGcVHjIoY39xBZhfAbn9lKLwbfuHvkaBAGVxQeR05J7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642394; c=relaxed/simple;
	bh=JX/4yIAS9g6PWA6ECS2nr5JkWGxidXwGUkyYdussyG0=;
	h=To:Subject:From:Message-Id:Date; b=EuQFjT8MOJY5JTxx3auKBynzcAnU4NYpMlRnPDdO7q7lbudIalT2TMsCRWadJGyHLuu5RHQBGuu6OyGXrNOHxDYA1U7xOca57ZpNyW1WgFzk8qqlDKIK4N8iPcr56bIFPQRz1+KJ9mcABx4UdbbDrsE0Daa6gJgkLriQvh7uotM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsXF8Fok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsXF8Fok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16ADC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754642393;
	bh=JX/4yIAS9g6PWA6ECS2nr5JkWGxidXwGUkyYdussyG0=;
	h=To:Subject:From:Date:From;
	b=qsXF8Foki/aRJDGo5livE+MJjMQMXxvM9r0XfJF0ULGVONyZX+OiuvS2mVHnWjnxw
	 NAq/7MGJCdvygIrrHbpvbwZQj5U4Wec0dWByPd9dGtBiCkr/aR+UmVtBxmSWT7g1WL
	 H9JGNj8ri/uyCNZqm/Rrv9K6IyjdlGMQlhbGsgjAwq8CW4AdHQkRcD2pgr12aiwg+h
	 dUD6lEJN0D4ZuksPTUDXbw7FQz2x9rf4tl9Gxwkbk4qv3+XhS6vE5wM31aZp2kDC5u
	 64CAnBnSQFGaFZThLmxRBxuShwTYLyVkMMMuZsNPN5PJcjMpVFM9QAbV60UU3Hqyz6
	 DOuLZUvx9xTWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F99C87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175464239358.2200.7304735127630756710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08a706f59f58d3205b9773a984b5b0b95c1ef74b1467f31efe83b9c71f42ae02
Date: Fri, 08 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754642393
