Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D107DBA38
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749238793; cv=none; b=g2qMO3uR+zBln3IFGgwrTevJoNozK0WxvnJpkn/CqnWsYtYYAESdSFovfCr6qKngQa4X+2yVS4soRvvbjg5y0b20b5itSCOT0mkBHxAjyQccYVg8sDSR6r1DbvlNEO3EMqheuJLhMLm4hz37DrCBX0nA6SvdJmgh/MEihtCww5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749238793; c=relaxed/simple;
	bh=BQdzOxBgPnQkyXBxWnqMfY02MrI2wo1fJgQMqlVD9k4=;
	h=To:Subject:From:Message-Id:Date; b=fiGrSeLRwHPRFPJSA9h/TxgKBrSAtbc2cUb7C4scRTmaFPwjl9Skq8Ba2L1WQGRCRQ8ose2YkGaHLakuTVLPtYoefFdNlC+OToZ7JJ3khBC686zLkpAX6jm3tl8f1s4jKG3FR1efG+rd1mHRQmWtQ5fsShzXfotaCQqKfJcehtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uv2d+YqZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uv2d+YqZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BB1C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749238793;
	bh=BQdzOxBgPnQkyXBxWnqMfY02MrI2wo1fJgQMqlVD9k4=;
	h=To:Subject:From:Date:From;
	b=uv2d+YqZh+GV/vssNgRQOg2K4fNBavY2EskTtN6N0u0OhF+ftfJT5QGZmS+PlQond
	 Usr/fzpQErDpiMFUm+5rNMlf9I9m1dbKHx0z4IcFkMbH5YkjZvW1ManRprPVXdff3X
	 OwOrFMm3F9i/jd3mDckG4KMzC7Zy+nJnJtpHuVpbzLVaAORAbjN0x64j6JQVEeaFFg
	 HDK6/+GGsj+0Ue+w5LkYTHl1bGIueD8xvxp+kM9v/z1lvufqoV9JNzgSnXLM3jkrDM
	 /Nn4dGpxx9RG0w2xdHUC4iSU+0CSsmOITjRyQyOXfwhmoL1sVV0wXWjxSjEhPQrrSK
	 yDrcaKlrwhnSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F320C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174923879357.8211.5112354194616784980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52563f60f7150aeea1654133d2128db1557fe06bf598264dc78297a416d5efdf
Date: Fri, 06 Jun 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749238793
