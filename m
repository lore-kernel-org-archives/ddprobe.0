Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1B33FB1B
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727607354; cv=none; b=ib7BVZLK1UwIsOdc05axOX5ku54L2cDhCWBu0xt1NKXWdTHHomYNMEAvPwtZZ1uaEAIG8b51y+Ki1+QP/jb6KHif3qYNJsd3NJBe+AjmQ6LqwwPKalYoqPyV+HxIl4zPHfBoRTzPklamQSIrA/v5Yk+6dznQXTQkr5CZDF5BLMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727607354; c=relaxed/simple;
	bh=iPWazoF3rEE2jA3SxiGo0BYEQwpFFAqBeSWqMmC+9Qk=;
	h=To:Subject:From:Message-Id:Date; b=SF9hdFsv13gDpvC5ZOwYgGcTyC8eG9qFvHXnrBdZYubh/ELQtLlIfQg008J0tM68zlULZNdS0y+1/dZq+2Z6KyS7naCe5bLVBT0ka7fGcWvKB+77Ek3odnja/ye2IEvNXuIwb1ve0fWg4UFADYuOk+PQTQ/P1911kFDo3arSiyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=doYb2qQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="doYb2qQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4A2C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727607353;
	bh=iPWazoF3rEE2jA3SxiGo0BYEQwpFFAqBeSWqMmC+9Qk=;
	h=To:Subject:From:Date:From;
	b=doYb2qQiAtMJgDps6IXJpXnBQWeRCWVNg+o6bDCBV7AYrbF6YXu0vygV3RL8dMiZe
	 Sx/6+Lvs2e9VXqMTPWFQhDPuUEdr16aj9gJwmaPnLMPatZ9Ph+bVrW4wvjKGxIM5DM
	 yqNk3sYfT6lE5rcnayBDizgzYKuDrAS6oiGesXhri8roSzJEWQsfhUznYFZDVGdIpX
	 7Ve1gH8k5PQqHT3Fseaoh2dxREX820reRwvOwKs8JFRZ276RWbExx5us3XowCvwj6a
	 v4/10mq32rCYztjUk0TjePGDnA5Uf2b8OIHeevE0Qo8W5NvT77JXZ2+bNnOmteZH1K
	 nfhzYAHSMqHaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7BACF6499
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760735362.22339.5144993059551105389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a22957616f7a454754a87e6f62832731862732c6e3058b29006b125d35419ee
Date: Sun, 29 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727607353
