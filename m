Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C628E26B76F
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754696393; cv=none; b=i2lC8zFk26IV5UYIGGmA7xxmBIz8ExZG0A7U7u296f3eeoN7vCk2xihtWiMaIvk9NWXdub1RMEMxuPsHOr3JUaopvFvujFmLrhgvzHCcSp/NaSGtKDbCI5iYL6wCMHQO08kyM14XA0T1F1/Zv/Rc9XYcDaD9d9p98XMAkx33nrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754696393; c=relaxed/simple;
	bh=z44evI8by+rfkD55c6SQEPdASRRb/5LNhVXlBgNM01E=;
	h=To:Subject:From:Message-Id:Date; b=IG0w+7mC/lj5KIoRriT3Bv17lM6B6F/NTOtYM3hf9vXW9N+qcOS9GSTxRi7HOo5yrT6SUjEyMFPvnwwMCBHArhpDir0rY6ow+hPxbRRFWszgl+SA3NH2tWQPP/x729aquer/GqExRc3ts3gjHHDPlTZjmpE4q7am16lMF6v74sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcorTroF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcorTroF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8DAC4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754696393;
	bh=z44evI8by+rfkD55c6SQEPdASRRb/5LNhVXlBgNM01E=;
	h=To:Subject:From:Date:From;
	b=OcorTroF6pHL33UsRPQOiHq6lHtEBO7bbHhcyKeYlPDHofV1+WT0W7rkdyJlU2uTg
	 8JG699ZE0EvdtleT1kvddX+yo3dJPjmNh7rAl4OyzCr32N/7ZaZfVyCD6Udy+xk/lK
	 wlBVXrxUx4jNDUo1dzDdoB8Xs+KgSQNinb6SM24KaTw55sI/2y/ZMWLQzUCP7J8Sjg
	 dFRgrr7rRw5UXjqykR51CGh7A6WoN0zydPPmYUhxNeqF+AX9ZR7lCUEYQ4fQyUFAa9
	 Gl6VFjeZP0X9Dzr7N+fK3gCBmBXUZBzSQSqoKzjvoC9BCNGHgHBtuCYWM86AiMZ4G6
	 LOq+YnKIlxgvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F00BC87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469639357.23107.12940770926432430970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec562bf4c06efea6e71486c4aa05133b19f2436b31658470dab792c3fb57b8e
Date: Fri, 08 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754696393
