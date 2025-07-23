Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA9CC2E0
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753288794; cv=none; b=Hbhg7t/tQVe4vegSAbOILhSZV61rOM8kLFAYfolS717DN8CC/A5nHd/y2FYYXKt32CQwG2ajvVtm8fO+SQyAdkrSbGfk55yHBujgtwbXKwjl8wbf0eSyCQcX83wM45vF7sdV1LWxrfNcKSXZnjEXEubFEfg403V5+zFSxxECs6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753288794; c=relaxed/simple;
	bh=ynK9EXneU+Vlws6P+yUjUxtHnz6Hx/tVF9bU7f+tI/o=;
	h=To:Subject:From:Message-Id:Date; b=ZbOoV2AbyXofG/OiAAKeKlPWau8SS6wcRDHX9Ae+OG6LA2BdH7DLbOp+E4t3MDwHbGTGgHsuF4iRcIzWklaXRKVZB0jA45TsoDyQXgZqt+KIdgeUf56Gr+lTLTEZnfEEhqgSo311/LNu5ys4a6cbm964sA1gBNlKe7/JeZpm/zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLq5qb18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLq5qb18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA5EC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753288793;
	bh=ynK9EXneU+Vlws6P+yUjUxtHnz6Hx/tVF9bU7f+tI/o=;
	h=To:Subject:From:Date:From;
	b=WLq5qb18OwhLSto3A5h3xqZ/M1Uw3YMPXOi2+QKnax/MU2Sdag3h751DmBUNdPKaK
	 3Acwwh+Gz8fmKOWmiqxBEqAWnyQrFP76GtdBUsY6B+o5OuXcdmb6IV0TR4H6Z6gswS
	 7RDmBj1cp3FW/QvaMjG4qdlidHVAtiIRh/tO2/s9psnSqJy5A9/qgE3iLsQY8dLMH+
	 U95qolododEJCQVZLuaw3r58h2zdQghyrVf1/t+okbDHfihTWc6ixCOI+YdAH753vI
	 NgaLL+4E3bzWtnqsCBGpTDNlY+ZwyM9e8bgXZ3z3TeS0s6bYd9UAfT1aHxE4iUX9/v
	 D+ddpZj9IsdDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3ECC83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175328879357.21533.11941529843310826285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea16ff3969fe02b8ac55524ca17400e847a06fece9e62ab068719011d8f7a13f
Date: Wed, 23 Jul 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753288793
