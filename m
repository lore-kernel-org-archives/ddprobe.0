Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3245C2F3B
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732929954; cv=none; b=i35QinY1KBm/2fhV3fmkjxPZkdQtUsSEaOeHLaNnkXPwRMowsSnW9JXmlrPSJWGoaWZHbEuMPQVwWy8LRP3lh3mSev4qpo5PFI/sr5uTneY5a2S41GyJLLV1iC+LzYDWCjKWkYsl8/MZ4cyC6SanF0wQovvkmQDPpEsy2yCP5qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732929954; c=relaxed/simple;
	bh=Qh953D+SeTCghC16SDRqp/y3qruXFyTPHi1vQ/DdaT8=;
	h=To:Subject:From:Message-Id:Date; b=JBcPUbRtQ/BuRINy8zlX+Ic8BJZLp0OKjggCjK/ymZDpu5ebEI0xzTYMUTcYvP3tyhC7aIzX5Yg8YxgbW3zdHtWY1tn2o2uEt+WQxvTvgtTT0TFfi7ypCmrF2bWv9SxVylcKhFOiJUjUL6sZP9keIYzx3ekqoGkMfQBGBoCREs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fr/lE1sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fr/lE1sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13A9C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732929953;
	bh=Qh953D+SeTCghC16SDRqp/y3qruXFyTPHi1vQ/DdaT8=;
	h=To:Subject:From:Date:From;
	b=Fr/lE1sgajKTrBZ1Od2/wiub1XCQkHYl/ZSsmzA5fYQo876KolA/rHVdI2Oe2WALO
	 QAVgxfOSHHTBRd+egfzhlW77GQuc+Z6gLeaHUltFteW2cPhw5QJ+HYnwk10QQUwuDl
	 MoWdR1TNI5NaXUI1FZxqmMR4w4wLM+x/hzOhJiyPaXdMyA9I3+Ldqw/CgjSKgPHMfo
	 1+RtCqtC28oBOjFnXoAPq2rw+johI/M9qDPwiYeH+jOM5SNLFVKjqRvne3LCdYf/HP
	 2m04KtvJqjue0967mxDHnFJzR63OHxLa34vYLNSHTn5HgEKiKNFU93mK8rbZnWGNDT
	 RGcBS3wIZeoIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ADB0D735E4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292995360.17502.7935717068669041692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe4972278302e66c701ff3279e94605c297ee65d7156e615474c89559e782862
Date: Sat, 30 Nov 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732929953
