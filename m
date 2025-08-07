Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D078273816
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754591394; cv=none; b=CQTwEHQmYdkC/qRxBT3btmAnis3UbnFqXkbnsD+V5mRQI5LqMX5UNZcLYKY/6FcRjuNzIRwFHM6mUcVn/a/QXs4NMcPTyQSuO2YdD4HXUOfio7Mf5CSEU4TyDGp8VM+CIdYkqD0fg3pFcoPrU0cAWod6UhKkaL4uHy6E4b86N0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754591394; c=relaxed/simple;
	bh=GhvRtK1L94NcqxvKfmtGM1TEDjuaQjnSkapcDK7nsX4=;
	h=To:Subject:From:Message-Id:Date; b=UejFePk9vL/iLLnvq+tpnaC8jMgVpnqVIGBLWTCai5+/GyjRdM3hRIAl2AGfLfpydl30oHTujj/fPaYt9dygn0MYA15Gu87cXvHgQ9CUDdPYaO62sXXCkqsPawrNmiQ93q/+PfyX7NMh5N+NDsGe8Vp+y1l7Kp3SpAi4FxNRw9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXziYu/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXziYu/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A000CC4CEED
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754591393;
	bh=GhvRtK1L94NcqxvKfmtGM1TEDjuaQjnSkapcDK7nsX4=;
	h=To:Subject:From:Date:From;
	b=CXziYu/5UGus39jAdcjO+T8DD1DfPJEcS+OY1vuKspcMiEp57IJraAaGlXsDV3Upw
	 wp98P+11fc5Np4guIUoQjUvA4z3U4BHglWPHdNT6bW0mlHtmdLD6jjMkoRdmUjqJw+
	 EsvAeQsNGEYlBi+z+41Hu9Ka6Hp+jc8aecIPJI1MjnA75Mt9A0lt10rf8T7VKRVh4B
	 rtSUc+Pu+dHzwpC1JV5cQSGStdohdSlClUENX8WUz6Ja/H3U6kz87fUDsicbQK0DDS
	 l6+Tx4PC2ucab6gg/4YVIr0Yupy3x5yATFEo8OPvvCA8ZJcGIBr63e/1RdbOHLiYgH
	 l8hGoI2F3tAKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90028C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459139358.11565.16286948695102282586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6947d5987e19042386079ebc3ac9bd8845efb6b82df9292fef238ce80702454
Date: Thu, 07 Aug 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754591393
