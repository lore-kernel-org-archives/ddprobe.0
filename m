Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A977399030
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774524294; cv=none; b=KiXumlamHlsefyOfcJNa8UyAPTaZNOnlEWkjXmRPjA6qXhJgFLcKfKuxYnxCvAzD756MQXkF7po9Pf2eZdHadIhWpTw/NEu18bLtZmah5U6deyJn2eZERov8fxDGEBu9+bjtXDnaSmBWXlOWjVL7hjjADo2Z/j/scEQbzdueQCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774524294; c=relaxed/simple;
	bh=UeCAb5Jo1rh4SkbRLLwzsT/ptw27l5firDDs+057hYE=;
	h=To:Subject:From:Message-Id:Date; b=fy2ggQTOBjzt7D8pNtmHU8Y/AvcuL0sFHHSgj50jl6qUxKrJWgMVT3S9NQEdf8xOPcwqP/06J6KLGUBecQpHUTqQDbu4cb33YbFmNcKjTTXxZwUAUaQsRVfUsgdXvz8O4/8t9Bpi2MUAsnAi2T+2OcjZJQzfieEVnpHPFPV2LmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx/XUsKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx/XUsKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D00C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774524293;
	bh=UeCAb5Jo1rh4SkbRLLwzsT/ptw27l5firDDs+057hYE=;
	h=To:Subject:From:Date:From;
	b=jx/XUsKCQXnqs69u3+iST0Q+VZSPT/jbVfc/2OV5sNxbKnFYTM6i0e9zZMUHlx4wp
	 RoxVdV4Zlrl2ch1Mxjd8GClYo5dy1Uc1KURt3N1daQ1dOaztvBTmTz10EQgO1Hzz+1
	 sT0hUX4cbG3l77sNnHJ3ahMvjBtx9EV3DZAwau2DebxXi8jG9cDOjB7wA5BS4S8//g
	 pHBmpHEw2UY3bI38JFfHbylWqhh6yucVV+lItDLLXXsWmVf57ZvWYmzRxd4JCjff6B
	 K9zAEAAZL7HkXNgCfBpbIVbXraFNJ7lLEkG5c+hD2Xp5rZE8FGUCw0XSlwH9NIrXYW
	 96WcPz5csDkbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B9C10A1E7D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177452429359.12588.9375460680254805742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b3d755067df5e77c9e03d930f280e3a5ceb0f653e22ee7433bafef1b01a726
Date: Thu, 26 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774524293
