Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B9DAD4B
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737573354; cv=none; b=trH9V+1ElpAyOuj9j+QaGhJky4U8p+mRU8nnCiMIUdVj6pHRKEf5R6bU8CIqTRszlwxuXTINe3J6tRt9lZNMuq6axUZj9S2L5WkAPOWIs4oVry9KHjlXV6j8creYEro/tQaq8AyUn0/QJEDlzvVlQ8N4emvr7BTUtgAS9D/B/ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737573354; c=relaxed/simple;
	bh=bUZVF0PfTV2AZNNqYYXXvbHvDgYgtBEM12GGTg9/N1I=;
	h=To:Subject:From:Message-Id:Date; b=XHYOIudCO2CnQUGM91A9h+vAQBjahUPKTbOXHnRdZ/W1gEW3Zp3i/sYdaBH+sw1pIX4iNboqqoZ8U/leJJd2P6cd6a1TwzqMyQoq27PgoK/jApBIj4CmPlTUwtkef3CdnH18+lIlYcvU9ACVwfr7onZB/Y8pvYlJEU0Jksq9Hc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MdDnzjDD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MdDnzjDD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC305C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737573353;
	bh=bUZVF0PfTV2AZNNqYYXXvbHvDgYgtBEM12GGTg9/N1I=;
	h=To:Subject:From:Date:From;
	b=MdDnzjDDQ50/KJJ9S1gOz9REp+4ULQKWvBdWvde1lBaCOeOk4cwDGkwEobMa38TIY
	 Jk5Ir4oJywOCYjpPNtnH4BN7Ct+6cYG88xsoQLoW3FDsErYRygkZs1ERnWAp8b2Hc6
	 yNEK5tIdSOgc6tDeEcJ5uSgoYBAlhHh9IfSvrthipXRue2175CqGbcEt0XJ27eokR5
	 vY8jWDuMCt9L9nyuq+ZvDHi7LRRMqdYce5bQFXSsY/n4ZWd0m3uHXag6Thnc045QuA
	 9VJDZErcLkNxtGPtr55VKopA6d8XS3eXycsoEu/fNsnVR6bgI5Zs6jkccO1rVExdkD
	 H2u5kvX58pd9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD10AC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173757335366.16091.7214429271590207272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0606770bb748b65cd1924da50404c909029fcde2c9907d3b20267c4319aedc
Date: Wed, 22 Jan 2025 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737573353
