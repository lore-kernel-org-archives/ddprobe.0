Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65B8F23ABA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781414794; cv=none; b=nKrq2o1gWD/HV5JU1GHhrM8WABFWaTo7eMvNawUPrNJn2i09LWJtEml+PvU1NwGiQu9wFNp8yZ2AdtBJ0aaNBeIeMQJukVRmgbZRQ/zIkWOFrm+aAbKxqDKav53HNyXvPUFsfZILYz9x5mxjyufG3TK3Dyo3/nhST6Mw4+OYUPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781414794; c=relaxed/simple;
	bh=NlY/xEz+GbiE0fxYSv+Lgl9gVJwb3Rb3QoU/fJrlYZQ=;
	h=To:Subject:From:Message-Id:Date; b=BWZscb0q4sF5iOsUcp5K4JD7GixfKLbKCyVhlx4TiFgTiLna8/DsmzTLCMjIXW9oJ/L/OIsKDmMGElBhBPqJJyd4O4lLrqct7/otU9Ql2erxvE9fyOG3hu3VLH8V9tRZUviFattKhra4hwGSi52bJdlHh47kuFL6i8b07Xc57oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdSy7xrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdSy7xrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC079C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781414793;
	bh=NlY/xEz+GbiE0fxYSv+Lgl9gVJwb3Rb3QoU/fJrlYZQ=;
	h=To:Subject:From:Date:From;
	b=TdSy7xrXq/JmJt2GZr85xIQQEVvFQXwUL4kTJfKdw7eCtfIO376SSMSkxzRF/P0OP
	 Dhnv7ov6pZic34LtwCtQHxs0t+1oLP3B+nKypxk0ncIqOZ9wzScNMdMU3P0uPU12/q
	 TbEKqiag9SP7Jq+GLObsjcUzJr3zRVWBMT3wAZUCvW2i7Cee+PzIZYdrZQ/SLalnLw
	 lfe2jBnpKURSl2MvNSxrOORQeIc+qCc7ydr2hrCVUCEDPrbeVvujcyDsLonDT9LPmH
	 bgfBZSlTvP7foW6iE16NLzdP3xXtq8+BIoCNCpPJkK07i3P7q+4+OIFCxq5p5Vry6Q
	 ADiwE4t19ivLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA68CD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 05:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178141479368.23603.1665097909597826886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e2991d58fdd42f901fbbb8cf18f266628e28769c0f531f256dd2b744c700d7
Date: Sun, 14 Jun 2026 05:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781414793
