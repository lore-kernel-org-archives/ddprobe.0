Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E8C161
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721347554; cv=none; b=POsaREWUxUpA2rUwn4PV+KtGkvGOsXDhcOLAuxuXzV7gk7CmL8y1I+FhVszytJ1DpyyUpSLuKtx8JpG8J57cLdW5QwYvhksSyQjXXkpSbO7U5FCzfxuxCTiOM1crbkSpJ6MN2eVDs1hPI4GFam35j5pecLgMCvXtWrePITmzoIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721347554; c=relaxed/simple;
	bh=ACQ9yaA1l+kDemhB3GDEz/hq0K/7JSBz6h/tqRgx788=;
	h=To:Subject:From:Message-Id:Date; b=i8N2dWeIEDV2lw5bzgBTPX/8bC+iX+zlbBu39MNHnuRitgmCG0XezlSSGCcB/9CD+75XxOuQrBfXr1Le6w/e11WTkOWyC/GCueKV/CBSn00/Nu3QCOs/4aXH/XnQPSG5GlKCdzxZo8xx8j1t7dEbpFVWHOHO/0GjpncJKYcuGDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAcEU8wi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAcEU8wi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CCBC116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721347553;
	bh=ACQ9yaA1l+kDemhB3GDEz/hq0K/7JSBz6h/tqRgx788=;
	h=To:Subject:From:Date:From;
	b=ZAcEU8wi6pLCxhAW1rFskdHlv1LvuOSiWNMDEpgj2/tMnFQBwR3/EUwS31K/KX4dH
	 MZQi5orbpHK+KPt5mPQ262WJvvcK0NFXOLd/yY2ZT9ZbYrUDySQDFgGR7SAJUGugJ1
	 WD4K3fk8W8iuLTTANoAMRBOAT7Wpp/3nRHuCsVrsHhAqHzuJBHl7k2+H72kh1Vlk5k
	 4ZoThI2gFxKvVMezdV9DLLgzYp4x6rS78e2UuTlYiYkYFYUZW36YQ31JPGNLWdXLDN
	 uKdhVvOgxJH4eZiuGvcaGQeks2cw3SMVEcmeHxhXd6+VHSbJlCM3oEjkQIXqQ5AZnt
	 74ASKQ7muvz6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09F6C3DA61
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134755359.25749.17367149282195664089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8934c785bbaad910f9819613c8a07f82ddade27715b99562a1dfd5248949563
Date: Fri, 19 Jul 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721347553
