Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FB717C98E
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726682754; cv=none; b=BDCqV2iJcLzwJ73hKZyyB4dvHMBgYGX4Eq6spPCyJvPOnTVI/JHBdNSZOpxKo6Ed0vP0Tlaki3h1UNspsLxE3HJ3lFYnE0QfBW+CQVb+szCUFgh54RDukDsZbJCDJcX2MNDmyX/AJtW5O/ibQLTaDmXWBG0Uy3XdXiuO16muXoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726682754; c=relaxed/simple;
	bh=E6vpQV6gTBdFMhPlfjkrdFvmTulpvxU4b9JYApqoGAY=;
	h=To:Subject:From:Message-Id:Date; b=n/0KKp9JZLcpBb9Yctccz8C/oe1Nleqby2U7sqfrQgzG8FuK5dfXnaYv1cv6aTLBh4Fh5GbJqL1eZ2VrouLSumcyTjoxTT3yW5n9dC5jXrxTVglQtSFo4s8UL4Vs5qDMkiNwnfjjCAMpXCEogbAOi6Tf83EvObU+M52/E5fViJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duRVuDe3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duRVuDe3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B044DC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726682753;
	bh=E6vpQV6gTBdFMhPlfjkrdFvmTulpvxU4b9JYApqoGAY=;
	h=To:Subject:From:Date:From;
	b=duRVuDe3SwsrDanGljXqVmdyS3r2a/kfIDU3nvCz4cspqpmqJjFW9fegTmJZKWuKc
	 zV3KWoFAr6SJXVfEr+spTHRHMD8SpjDfXtR06mDifzUtASnlT79zr0cU5Lo+wtmdHl
	 PyQzYNlgc1m9uTeJ1p9YZS+/EWW/Ddwzzu7QpZRbAKqioLo6cxTXqX99QuK244lzTo
	 pGj9iqB3JzmJ80snEk8kFeWuqRyccgLUDGpHzEYH3dstL0l0J06AXzO8H9M5n9kHXB
	 eHNuZWeHBIGsMA9zOefXAkFXoWRnQizyA4TvPSmIVpkVlbMaI+xAR3DkR3F3bkNCCa
	 /owxdTENtTcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9902CCDD54F
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172668275361.21376.16825240587435984123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96beeaf54efc7404929b41dc0e51d8adb32abc09600a877ea8a99b2198910439
Date: Wed, 18 Sep 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726682753
