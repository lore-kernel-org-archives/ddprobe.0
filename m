Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1936278F59
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774721094; cv=none; b=MjcaBbS3+/af1MW+0gcNFfFdbyPWkL5CfOIrQ2pV1cL788Lya27FaGELZoYfyLJccp83AEbDkOC5hJoJQc/C8x1o95TN0MkOGtN4bA53Y1BJRyKHAGTqx7RZhT3gsbx7BK8er1F0FxTTCU3ktHaESesRX+aSBr20dzoH7Z0yWvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774721094; c=relaxed/simple;
	bh=/bxpnI4qzedJDmz5i40Z1O4X7aSxmGXh93rRePPN8h8=;
	h=To:Subject:From:Message-Id:Date; b=SNxaSW3s4pcNny6wlOmbKBPooh7kxQCo8h0l2SHSvHa1V5yIldt0GvZ49cUn9rTvmt2I7F4S+YNpuoVEXW/07hOJLO//1WQdzplh4YaGo07fG3CrDz3cgthnusMdr1/DHddYYzeEa4EwFo9qjJWrag4lDmBIHoQCDaO6mFSwk50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VgbvSNwP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VgbvSNwP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49AEC2BC87
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774721093;
	bh=/bxpnI4qzedJDmz5i40Z1O4X7aSxmGXh93rRePPN8h8=;
	h=To:Subject:From:Date:From;
	b=VgbvSNwPP9e5i9Ax3kG//TJ7h/NH1ascp2I8+14zW3jNTR3kfvsZVdQTfCVbbPdzn
	 tTYPAEGLq63hKEHww1ZXL31jDYWylUn7Gk/xZZ1yhsGuKF2PFFLWNlDsh9hzBhdxsb
	 0H47dgSTLLq0Z1GtXx4KUinobazh0r910dCA9OnUWH0I3KfuA7R8Bcvf7S1q5n0HwC
	 wjA2gIByu/E9sLI7biUIwxKxL8XVDxCMlnSrIjvZIxu+YYofer93qgd7LyK/3rtSXB
	 aNtboGg8idi0+t4sKws/oMwFZhqEeQhtdwXpMVNh+YnR6ZCVohvz7D1JgrHOG4qNzm
	 QXSVVkqN7Wsow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9159D10F3DE5
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177472109358.26801.5802049945175459387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd73f3c14a2210db38ad4a52b33f9e4c4e24031d9fb291b0ae6302d4fab2e81
Date: Sat, 28 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774721093
