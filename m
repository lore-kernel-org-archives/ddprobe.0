Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19727B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89F8EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671937287;
	bh=r7eQOap58FMHLeTkAZ7ELCRUeP4/tDmPZWrYWmcZ1/A=;
	h=To:Subject:From:Date:From;
	b=KL/u7hw4g1q0n4L3h2G+/d7iiXdzMRfA9Jz/r5NcemQXV1KDKu50uy1KnbkcHzBIT
	 9DZ1uouPppEoB4v9bTjLDBQ7Gsjy8I2hqzaZAXWq8sE7aHxOpEQac7cvrbxvYmzNwN
	 ndg3sn11ZjviIujxfVcmypEvTQSFVCkxDSMygukC8FgP6dk2w1qbjvbp4yqNtPmINe
	 qZjb4GiU1XWGsy3xXDkubkVUVmuXHsvQBvcdOUSzYDmtoGWSOhYupI8d931IMkPrpI
	 JYnB7dn6jRXNM0ur7JMZeazLM+mMUB3FXU3xqaqDPL9T0loPzhv75ED6FJGadjqn9m
	 ioxBtLrA6KSjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E6A1C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 03:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193728740.9575.9299508160066508213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffd94887a6d53e5c827f9db1eaec232b1111bf1be51889c7983a78c5907179ce
Date: Sun, 25 Dec 2022 03:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671937287
