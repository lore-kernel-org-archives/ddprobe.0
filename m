Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398EA2264D3
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775924854; cv=none; b=pYOeH/Dq57lZhg9cZxQuUX4rxyMqHrIjIY85UhyJIDFhLhRWBnh6Plp2OTDkkMmYZT9zhpTv7eZI38tMyvYrpd98UtW55LoPz+DbPv9z+3s7SufX4ckZx7mwjmV/1hXgjlVMhTrT3Wn4CR0P83QmslG4z95fPp9Pf8WSHPzLjog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775924854; c=relaxed/simple;
	bh=YNbfaAHTg8jemZ2S1X5zQi7ObQ444hNUUFl0dxOBUj8=;
	h=To:Subject:From:Message-Id:Date; b=WsQhVTl+jWqkG0tFbshcGwtdz1xPYKr7eHMUrfjn/QvXeky0GFmYsUhamZ+WN6KWbYUR8NQoX6pHFsFY3MAqFaFvHUwA97PhkKD/Dxzc29LRhT3dSngF98wKDHS737EWBqC6aoBRpiFv3am8+PnN0753P99pKiGhUICdr38Ybrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRFXxelu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRFXxelu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF2F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775924853;
	bh=YNbfaAHTg8jemZ2S1X5zQi7ObQ444hNUUFl0dxOBUj8=;
	h=To:Subject:From:Date:From;
	b=uRFXxelur5jOMQ7s/Ue/mPItkGHvp9seEEZi2qW46cqzTC6vXP2V6kboIn+QluyTA
	 dBv3DU8uYWv9D8tA6MmuWIwwP5iOaES3WxgQut0EpNH7rK1Ja5sMgTu3gzCf0fcbx6
	 6vZR7bHjuRp05HoHt8YLHr0DPTJGFsLKNWifJAAg/nCI7r7YyGBLZy9mO4qWFU7pMl
	 1eCLySfnKrycLqasompvEMSSjKhRRdFCxix3KHG6wIQWKkVisVO3w0jp4zl9unJO89
	 qmV6bswHlGlMKsmjw+uviqRtTVj7j5iKZLtVo2XWX4qNt5IW5m+038CCmpeVmsCAxC
	 vokDnSJWgRK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD03F3ED58
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177592485368.17969.7806183518707194183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce76f31dc2b06875ec70e16cc13ec2fd821cf76046279093f5a9892719e37bd9
Date: Sat, 11 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775924853
