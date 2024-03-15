Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AA024A13
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710511697; cv=none; b=aH4msEPKZVUnImCnPfweumvol4m6JwmPe+ShbUDjaKln41dTUjZKj6MEG1wgqgNVZnVGeOYu+l31vj6Z5Z4Tu4nHLwSYHXEFSYr8TwymKkrRU0bJV3IXxDhlMmDnFIFa8f5snvLfT/54K4H/A05IOU/Xw18eC282NU3WkiKldps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710511697; c=relaxed/simple;
	bh=FTKZAFF0BHTg7WZas1zXBzGb2Wb4tm/TqVOTtBk1PYY=;
	h=To:Subject:From:Message-Id:Date; b=CSPwPB6avRSNC3fhs1Lf5YFXtW45I1F/hfqlTD7L31+JPw9aUYGP98DA4i99xXPxgYRo85RbW18KsbXUYGqw6D+vtEpGsW15D0le8DexTYSKCHH6v+JgyGZxcEK3qMW5zejylhhEo6+mcIwdlH6Mo+hA4xJJXZc4br8GjJc1j68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PB2KL+RD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PB2KL+RD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B8C1C43390
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710511696;
	bh=FTKZAFF0BHTg7WZas1zXBzGb2Wb4tm/TqVOTtBk1PYY=;
	h=To:Subject:From:Date:From;
	b=PB2KL+RD/1Lo5DG07cL57RFLCdn8Gn+/3P9BF0uZN/MoLcPpe+T1ydqOhNrXYUk7y
	 N3pnuoIJmibLOE4o8uO9+jqJA4TZyORygIVZzuutOKjJctElcvtANjB1zV6rfLLlO2
	 hUxopPwTF5sxQnsncVzBn5T/v9XvVd4GOB1vwoGCuEib3J+mMQeslDPMLFABNxRsbR
	 h6lbTyYyuPhzuW0n+wbQkmE03ziuVzFZKbeYxVgLupnAUxJIt0oL4p9tgMS56AtSaO
	 iSltOgDt4drCYbYH8hyc4FXZi9O1/1ttWQKao2HVUj8753RgLuRMJm4pM3mD/AmUkB
	 ulMilJx13uKvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2E2C54E67
	for <ddprobe@lists.linux.dev>; Fri, 15 Mar 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171051169637.1360.1235774324133177931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c33399d3b04c64a13faf388ae9e98e1df070c655fcf119660775b8c897b7bdd
Date: Fri, 15 Mar 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710511696
