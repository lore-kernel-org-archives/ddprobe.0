Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2733C246797
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762019994; cv=none; b=Ycbgy6Pgw8RYsI2X/s1uRNll/1YkyaVb0lUFh16kbRrs8bt8Gezu4U2PuRVxDcw1yUNjcmR7lGfF5kPOMCh2kWrjtk/yml53vra0tT0wHFx1bjTwm1N0q/b9T/mc+2C5M9QyWKs4xNav74MEGAm5TNSyWTc6Ua2PqbQ4vcSh9LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762019994; c=relaxed/simple;
	bh=qzvwlFDHptoCN6kTYrsNCoUL0VT/aWMCIhqbthUH6UE=;
	h=To:Subject:From:Message-Id:Date; b=D6OyUO8V6SV35dv9+qwYZLPz/OzKN1IYUHGQMARm4Wj+m6UoHGLgNSnZsWZKYq3ruIyLHfVdNxY3giMRXuRpuhBxq2XyZj1vMWoWOa9nvPlXv6kpcZK+/BGHbMCQdd60FfFaku2In4ykfsZRebnMfl77UC1AqWvYR6yE06mmfuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH6yrlZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH6yrlZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4384C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762019993;
	bh=qzvwlFDHptoCN6kTYrsNCoUL0VT/aWMCIhqbthUH6UE=;
	h=To:Subject:From:Date:From;
	b=iH6yrlZoQASb3D6ktQ2UaBjnzZfG9Xbc3fUuFSAX9UM0iNaxHT/6B45QGOz47peyF
	 QmS4vCTXaY7JTxk+dlETqotZlNuKzbZO2rlsG5IiGOaShSnbJd4VtExm7b8365GIVl
	 UFe+CSDKt5V7bKkOoagFYiyfqhpH0ZhIW6Q6XsprxEf8HcAz2vtzFc/0tGp09NmHJA
	 BxbEG+fPDtegzWm9P7zdj6W1LyAAzTmtwqbUCyURZj8l2xNLxmFbFfAiKFB2buuwy+
	 jDHzcJ78hpdPMF+YfeyvwRjML7qFxGdp4abqK+83yOvkO5ucZkufwoo++L+/569Xdd
	 UP/r/Zrxm2TfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EFFCCFA02
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201999358.23470.7023207937207290511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aa07df2bac803f4c51fb256252833ae4979027fd4b3d00925c1709eb1f5bf84
Date: Sat, 01 Nov 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762019993
