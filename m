Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2426C301014
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756199394; cv=none; b=KaMbTVExkPiYYLzKdUeFtlmqfQVWNVWDC2EPiON5VZQI1+9xGQMUbtcxTRaPJip6ubZCCVjTeNbMxfGbCu8lrGA8QOu9dZeEEYLTIS+c+SbeS4ETeuy+gAe+HPRZnzdd8UK0TVmSV3c8kOLPp6uCoXrr2LiK6TVdPRztauCa/+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756199394; c=relaxed/simple;
	bh=EMakzhQk2M0DlNvLfkBxW8x9Zo8SFt15bKtdxxzELgg=;
	h=To:Subject:From:Message-Id:Date; b=n9/xpSZcvrIA88OBSgtxBGC0d+5mCxxP5ctZCKIqvOTfhjX2AbO4Dr9WKPgb21mTzZt31PCjyStLHoWc/f0l3Mj74Zft+t5+U8LcB4l8PurcazialbYjWBkNq2oTCz7ipOxnS7ZbwUPZtEHO8aIu0U2N6QPNFsFVrw/9qBH2Fn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJqnm82M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJqnm82M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5A8C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756199393;
	bh=EMakzhQk2M0DlNvLfkBxW8x9Zo8SFt15bKtdxxzELgg=;
	h=To:Subject:From:Date:From;
	b=JJqnm82MejxAdgBqdifHJzFY8gNKlwCAKry5S6vsuDbeqHvX707pVpxZ1mOiVPENc
	 6JcDhv4qZOS/H5ysbvKf88KeEWbKz5OeLkWgiVvYdYWs+9RlnUJQ/ST0khKZ6cdgyF
	 cCrFrkrXhLFMwTM6ig40WI2WdiEFJPPXG2lFQr2eolF5dUCN6q7zCtdZUq/UnkJBab
	 arPnt9bJNzYi4HRMKc1cZ131ug3vdS6CI+sYxqs44GFN3UfVDpGgi4q9Usqe21Zcyo
	 MfwwTnplUSvFNmBZpJHSKCgJJD+4ujaI3gcv9wRkSpL5c74yWeu3c336Wm/up4rSEk
	 xz1d0sPpmaM9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD52CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619939358.17325.10916539153252312538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a3ff2df31a9faccb158eaf44778e8f0bf94afab5ba60a5eef3a3bbe3ed85916
Date: Tue, 26 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756199393
