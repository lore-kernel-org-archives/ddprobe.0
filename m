Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03F2828371
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768552434; cv=none; b=hR5N8J9GnC7NmPuF9I7Y9fhVNp3/0+IeoOLZDbIzY9BShiRqw9Wzj3BzAJingr1550SpdorFshL71BYjs1xfxW+vahjQuGdIxUpUxfrxZuJgge6pEpSKnaDZWHuiQ6nZ0jloAbWGOUizTvg/BKPY2Mc70MaUxoRt+BqjlH8K6Ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768552434; c=relaxed/simple;
	bh=H1M1GYc83aoPuYlIp6r2fL82KSNHrJbXV5q/xLjUOHo=;
	h=To:Subject:From:Message-Id:Date; b=EwuMzcSjnUXkgDyFjo5bvbNUeQp4mFWYcfEpWZWc+CVP1rRzjD+I6GPAay45PxWL+npT8ovaJ1xs0+CLJw8g79htqAhMU9vE9TnLdtjalg/yE5AoR45WaNnYuU5Lm1JA0Kwq0Wy2H7NP4aXoBPSOsM08Fqo51lAKdFHWFQG9GiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t35yVv1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t35yVv1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56CCC19421
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768552433;
	bh=H1M1GYc83aoPuYlIp6r2fL82KSNHrJbXV5q/xLjUOHo=;
	h=To:Subject:From:Date:From;
	b=t35yVv1TTKK5jsB58MjfZpMZ0Vd5/EdZ3oC9Vu8U/3a08gY9XoJisMiceRZ+3hCAr
	 A1ToBde2CJEeYGwgaFS9DsCOdut86i3ImgfDPDiP71P4LG4SVBYWA5wim6Su9oyQVu
	 al3R1QgnaaRONQPB2BVxCfUxIyz9vPUPKWn5heoczrmSkAWMxUrQRmAoLuqwXgBU/a
	 oEjrtAYrNWKsn0k8bQozMjgOsu80o1CuMZlAIOtHuRyUf/HcaXlmkYAB19khyPRqx0
	 7pY1OgykG+b/k4hd5AN/MN3U8MIxxfaid3Pygg5kZcO+cNfsHau7vqwp4bnVV7V756
	 CR0+k8sr/zQEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9720FD4A5E8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855243358.5620.6288682480355888497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7523559d7c5a3cc9fd7d9b538cb2ab1b7f541f0ba7f33920d6e9f338b8518e71
Date: Fri, 16 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768552433
