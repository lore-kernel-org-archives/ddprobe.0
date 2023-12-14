Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A89F5CD2F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 16:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UK/lGWgf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82B70C433C7
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 16:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702570096;
	bh=e8TopYbwWq5d7b91NFmCq3aRmDhcOd7dJzkygMv3eOA=;
	h=To:Subject:From:Date:From;
	b=UK/lGWgfXpxSofPm7/dn7P+xnvjDtLLAft5x0tVzwMDiL1A58Vv5vqwJG+86X+tVt
	 iPlnyTk8nPsNOST9hPRM8pemTZTiN2Prpn6dRIghpLkc73BKNvSHuDAL5TDXXoAuHX
	 6xMq2eb2YyPowK7TKBVZw120jmHgwNTo1FHLOG9Y9dcsACR9FtrGSEiPBmWn0aCATg
	 9xGohblxZVrIoDxJpQ/NJm4p8YspO+E7mQ4o7ZCzkB+zi6JAnqetTwDZh840XPvaWL
	 3S2ALbELFeA7uivABo/vUAqjKqCUmL5U+08vhCuDFf1ZhTZeUQSFYym/vncBdrh9Oq
	 AMUyRl5VUbLpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64E76C4332F
	for <ddprobe@lists.linux.dev>; Thu, 14 Dec 2023 16:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170257009640.26602.4583204698382524131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d67c27e5810f7625d5dfc2721c3a6714c5eead362264fa99d37982682e22f8d
Date: Thu, 14 Dec 2023 16:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702570096
