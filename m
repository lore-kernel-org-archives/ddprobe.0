Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 182813164B4
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774248894; cv=none; b=SegGvGq3jDY6qo/FzKpCpFz2gbGr6qQuntPWD2Jhwp22Z+Fy0E1nIjcEueH8GKqYsrUPWPn++4WNuvGr9LtA6RAuqOdsK7cVsDDMRTD7G8ObVOiZEwwoiMo0QrCKcky0NiVV+FJCw5Po1n72GV6FOQLC+ljp3sflh+i3lHbEEKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774248894; c=relaxed/simple;
	bh=TuU1kuPd9COoxqj6PrxMVpsJzL0JEJpV9EYUdXi0zfM=;
	h=To:Subject:From:Message-Id:Date; b=uSlR7CW1YjWLGypHmDNaIeTiVWdKC6ifOIcITgUu3hRjFg4n8q3lZHK6d6dr1mdYWD/O+n7o4NMuI8WdG8XZbC4cQv2NyCUuMW7DlZ/tv3x3e/6511nJGD+SdotFToAONTjxScWctwPogxY0BVN0RRtTVmQfdmuKQ2B3Ur5FlA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjY496iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjY496iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03D1C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774248893;
	bh=TuU1kuPd9COoxqj6PrxMVpsJzL0JEJpV9EYUdXi0zfM=;
	h=To:Subject:From:Date:From;
	b=HjY496iMXvHYAi3Rl6Kr49aj6nTTL94XWeuxQwJXZuju2zNYHgFlxJu4JmS3Wp7aP
	 v46g4juQg8ZCXtTOP4tav/giOkykIaIhNe8sQNIXv6QAPtnpcyNYP7h6STFAdB/pcA
	 vqEQGYRnqx7xbGIvLV2PaY/m1qJZPHRDgusEtMQkTsA922KW2ItrjZ+bAUxsgez3Wf
	 3Rttc5FIEPwr6odQmJ+XY/TY8TGZEhbbIlsoixe4XOHuSKBN+M5r+8UTyphytIPoHJ
	 wsuv2NUMAcMSwXL9aD9+VNtjN4HIxF+gRybDjJJnKi9b8cbqdUwr7TOHAfaNYkFNnC
	 36apNqCU6ykxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F9FC72A8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424889358.21956.11884321452703258502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da2a9072f890a7bd16b8e412ee228b14a3fe714826f1f5933aebc6047aff587b
Date: Mon, 23 Mar 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774248893
