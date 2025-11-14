Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08D252D6E61
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763144394; cv=none; b=S1+yRsTo4kix9HfH6FeOCNqZyXGg0aGpWlODgkrzeIBOabgV5jNu8DoHB3VwdporWrqLFLVP01mYb/WqYaogGoPGMmDjEXTmg+cllX8tHCHFvjHGQblFD7GYz1+L2jfv3QfeJYOHHkHdDpkFpw6d6D8JuJXpjb5aqyO2BuTpMuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763144394; c=relaxed/simple;
	bh=uDnHVIC75d500ax/4Xp4TualMzNcd77Bm4yPos7PP8U=;
	h=To:Subject:From:Message-Id:Date; b=AJM3rlm+kmlVxf2n5XTniQ4QxwIGpIC7Y2Svf2pmJYnm8fA/huVPPidCW+svveue7NH44nJo7GTI3FAzghstbN/Alyqs5pRkXmsIikyJWd6j3Ty1Z9Cz3v7wDVPZD4ZaHe4IvqeVttUmLkEnHdKqSoIcg2faCnVsE4wDZvB4Uoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojlqgxWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojlqgxWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8D5C19422
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763144393;
	bh=uDnHVIC75d500ax/4Xp4TualMzNcd77Bm4yPos7PP8U=;
	h=To:Subject:From:Date:From;
	b=ojlqgxWFSsjcwow3tQtgYq4UraSoKJo2KqBcC4FjPnbNWujsQ5lk81JW9ULhm27wd
	 vdWaaRs7PVe/wH8o2B2Zu9k4AIPD26SHAxodHhHD/URrb0CuzU/Bdh8vDkG73nD2WQ
	 fprx0gkBRmeAwbdqjHTMcbTM2ejWYmE4aGMz5fxJ/WTJR+yz7zXXetLagWjQj+qR51
	 05F7eNnPQzHpYFRqZ/6Yo89SkDHQTnQcWTT0hsg7iT/RZfhG+Egf6YHsc0uO5nJDTi
	 tdztk/xSO+o96QSjIXbY549Czjo1u4R+o0YSMLS7vLO1Yh0FkdIKalJnfREwFl3QhE
	 nFXQU1wHrth/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915F4CE8D71
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314439358.10033.7893856445377796282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 369b334df28778c0effb28b531063411f23bef40d2f2906b1f607208b3d43ef3
Date: Fri, 14 Nov 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763144393
