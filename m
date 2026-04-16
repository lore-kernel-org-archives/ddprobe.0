Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E41327C00
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776377854; cv=none; b=csYgTTpHJtzOUGJ1uwVKnVB82rC/Cmzs/jJKCzdRUteS6HlKFix9BTrsEFuLbc0Nxt0B99+pM2RezjafmvnKFlm6nLZD4PZrPEUtyUIXjKGuEfDPIWD+FNzzP7/QFTtxO4rnOKTxbH+r8qYVtc8yvMKyLctkE2qBT5+1FKlTvF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776377854; c=relaxed/simple;
	bh=sucDCgzBbsYTNPk4Pnddffki5fkfe5bQ24rFr/S9CzQ=;
	h=To:Subject:From:Message-Id:Date; b=awKDIz/TsY/MrzXqQbp4lxEJHJ90+gud2WJsU0cDRuBkTX8cRsQdYJTzJP4xzGKFsQq1nhy+4iZ6M+hlvSUdvlSjMa8UWh1XbxZFQspa5hCOiwTFLFCLBF/v92ihN0ns8FHNMTuTqgHJUIhvf+lDXjberHugz4oAzdAT5lChM+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm7yLPmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm7yLPmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9112C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776377853;
	bh=sucDCgzBbsYTNPk4Pnddffki5fkfe5bQ24rFr/S9CzQ=;
	h=To:Subject:From:Date:From;
	b=Vm7yLPmSago/W1y+nUyzXNKuqi4sQZl4H2ERcpGmGuKrgYTL4osIx2WzButucbKOy
	 rk+EUc4V/qMColtA/zzXMm4rPHr/q5fUZqjAb3apkDZ3aMuCQiZ7UyBIGu2iXTy+Rl
	 QXCe2kFSYAkDMxfjVI1Jb/+DpMhpnIqSusKNfvwmMB47imFWUaFpeZCA5XK3iIDw7X
	 +eTBmqskERzLoGsorKK7atqlhY9K/kBiaUIdHQ5wcYTtTauY8VXKCB48r/JcnmiUCS
	 SNmOSYtuQlS7X3wLzAzF/wngey98Sl0rhuJZ4xf2sS6Zrwofw2GCc7gtXyRSDuHr0B
	 q5q/pZZJDOZjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92EEF8DFCF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177637785368.1880.43332917720810001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f088df66ae2744d42453aa209673aa212900cc314c90021745c785d87ccfc1
Date: Thu, 16 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776377853
