Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F934248D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786056034; cv=none; b=hZO6cZ6levWDx4aU6mqiDwHwuoP3MFyTvRFmzoj/ZAt6ckfUH/9LyhxMb2qt7zHrVy2qdDHTSJj0TObTdxGeu5jl38LL2etsQyKQQNwctDeYuAM8b5xDKvfcV3+6mEieOLPS3W9iBA0mgWtkDNqKOZLq4hDV/lkhusKVL17Nrqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786056034; c=relaxed/simple;
	bh=g9XaDffVw/aAgqG9vAHIf+pzRmp/r4quPzKN2peOFIg=;
	h=To:Subject:From:Message-Id:Date; b=BSAnzNVrEaVjZNjTymKFj2Zc4EwV86RegPQGdTwjFQygKnFxadY0cF7YDPohHYe9a0vLugRQ8vYa/xoylHDBLW0RMKaHxHi1n+3yKUAcBo34+uA/USBjEnMCpSIw2t/XsGcypNBKKm7v5jl966LfUNAZkEoxZThBtpkyRm9ilG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bfg1t2tY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bfg1t2tY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A23C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786056033;
	bh=g9XaDffVw/aAgqG9vAHIf+pzRmp/r4quPzKN2peOFIg=;
	h=To:Subject:From:Date:From;
	b=Bfg1t2tYIGopCO2sCFF8pM7aQ+vpsQI3MLmvQr13+xGum8rA2yaGpgbownBxFUdBK
	 e00zPCyACpbzjx9bbQxe34Pt9px+HIVNY/DZuX4w00oqxCESRMsznv2mzdBc/QlVU9
	 A7Nt977b35fvFYCGYOl2cUXm3N5a+VXcsAAuQ9b0kNMxwRAvYcMEGxAOn35RQ4caAT
	 Ud7U8EkFMT1pf2OkTlDhdRXEBSHlgQQIHkHdx0phHPnWZL5J4jTAl6NH/4f0sj2/TI
	 Rgm4hMr9zHPHx8fZYwPXwyw8/8uyQIoGlx2E7HqRzZ1WZg4mgLvC5s2DHv/+HxQo7/
	 dKY/X0D3b8Q7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC8AC5AC7C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605603368.20634.17384255552099792167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcabd80721368f92910c3b277c52b65bd21fb49095c505b04de0a35e71ff6653
Date: Thu, 06 Aug 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786056033
