Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3131F20C463
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746914994; cv=none; b=ePjL2LD5JSx+dKRpdEvWdR76GtcCf7cxTPVBTAjKCeGLbptndjPif4jvejUUMu/Rv7wt/0G3LAhWEaXvE3H5C0P6xeSbdoBzkk7pZbGcnE0TOpBHU+M9y276s80CTZ0QgVWnEaYI2PLC79B9vH3XT/7/3IFXhL4ovP8U7P2WCNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746914994; c=relaxed/simple;
	bh=er1s0/ry0S10RUO6yUMjfb1hVNHz7GbMIXnabXbygG4=;
	h=To:Subject:From:Message-Id:Date; b=bqIYIBtj3h+w00/v7nrE/DYAqtDjJB+GHyqFrbravyqPqsvX6iMgd+ksTcfzSB2VnqWmXRt5o8tvqVRvhScXR+nMA7kvryxLrAzueIpHnJNC02PvbuTuhkOFqjFPvfDwLK6jTYEKzBeLBQSw4dSdB5IizSxcAjLpf6+z7unf78s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDgqby9k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDgqby9k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4246C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746914993;
	bh=er1s0/ry0S10RUO6yUMjfb1hVNHz7GbMIXnabXbygG4=;
	h=To:Subject:From:Date:From;
	b=SDgqby9kpf3B4EP7XudfzIdgHJwFzWV5X8vc0yh9xg9TFOiHKKwgYBNwGEJcjFzkL
	 AmbczRzmrC2HBljOXHH1eizNKYD8R1oMIbWtVplyWT/9/gLz57vbHKJBXCxvvTCxtC
	 p1dy5gKdsuDI8A6yWHOmr/oq0/dqZp0EaJCbv6+b5SAIcFBipe4oCLl6RWNUKE/3Xw
	 a2OGryhDSqVwwDkUh9J5aVz+A+MXGjGtIAFERCh9S2o7Yu1/sRjDI/kDI7SQ+W9AFf
	 qRiLR/qt9PgAI6JQOLHg2trdeIsiAyFYep7jP05xszKJ9n3Tex+aXKHiufCvSXJRwH
	 EuhTcS2evfgmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9054EC3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174691499358.18980.17698394384220031321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552178eb8742f50d5819022a2596edf9812606b933652b8e583e57705d201839
Date: Sat, 10 May 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746914993
