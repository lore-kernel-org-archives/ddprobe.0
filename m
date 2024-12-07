Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AA41547C8
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733604954; cv=none; b=WKlMTytUlawaCNeusf7Nvtv0Q1CfSb31RItx18yBsdj9Lqr7CaHqwbsgD8UpZI9WmzumhSnoQP1D2cHiKOBH3M4PY6gJcnl/chkWYWqJf1hMbyX9UrRxBnesH1H0kL/7+uavvGoed0Fv4nKOl23BkgTojf40Y4IHvSTbOX+cA/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733604954; c=relaxed/simple;
	bh=1QBKrgj6mUdgamehqCQ4kzHOGXI16oRGhBu45ih8xyw=;
	h=To:Subject:From:Message-Id:Date; b=NZClXac0jQqliWJ5EMwfM9p1YfxVRg0M++laQxt3+WPU9k4mx7z44TjLc1o1PWdU6TNI8/YLl2AGTFSDSejAWTOe0uRPTnruk/emYfxuKpp039y8yvyklTY0LnrPeP+V93E5nJrCVfsdu38swIj9b+8grdVXmyNlI7WD1aqwq3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+hR6XFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+hR6XFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B37C4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733604953;
	bh=1QBKrgj6mUdgamehqCQ4kzHOGXI16oRGhBu45ih8xyw=;
	h=To:Subject:From:Date:From;
	b=R+hR6XFPAcUw4Ik6OG/c4OeHEuSKRUCsu2Ww7OAIPVC0y3WvCreYa1juAmN4VDBz1
	 atxruQ2qzskAkun2kr8yIWdcfN3XVx4hR3lOaKwifCl3V7B/GRMMpij8ST54psLWM9
	 inT3TA6MwHeeA9fau8o0WgpdEorIQ7lZDsUJ+zKYedy0AgZZZmcqYTbz6fkvOfY0cI
	 SuKLywgISvlVbYgfXi0oDEZRRV8wSVKrlQZHLN+9Gzvl6d4EjpxqBQTAWuAcOMXX0G
	 L0hnI2RLl0NTMwuq3SA5B0ZGBy+8CytgAGoMXSae8DOdQQPiAVjABzw/D1VOvm5AQd
	 izDN6/FUIXcmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DA8E7717D
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173360495365.6323.9578161106520971138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f44e5c3260e577de4539e9d8b285fd83a0e4062f3a85a8b2c996f284d3ce79
Date: Sat, 07 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733604953
