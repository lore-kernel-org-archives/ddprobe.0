Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8161620326
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717645643; cv=none; b=HDJpIvb8UokUebvN+nz3QEpjYYRZuLAgO4JR8MZaViQQjPaAkYNLF3ss4h615h69ZQVF7niZf0kgpFETTKdzSyHKlZGUyC6OaYQNHsyihqz+F9TgWWPcliyjyey0M4Wr8Cg6lZVW/xmPM/5UPuTOL5CjmqMUrfFApG7d9nnPlVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717645643; c=relaxed/simple;
	bh=iDn49EvmzVS804gxJk4UDvSyylx84fXrRz0ReU7dJP4=;
	h=To:Subject:From:Message-Id:Date; b=nzJrfuFpFA5KAVb5NV7mn+YT7qoZm2g2nPvUE7S0lNazGr1HxfXVNMODWlekrz9kxr9P+f699xys1ZOrAyoB9u+uGDfKxRNWqUW1aeYaZq3tsluS2NKtiOQw+ca/8dITvp4EKtaF6dihofmZ5UBWJFnBLQmg9jxg2Yh04ayvuuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JqVDL2Uh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JqVDL2Uh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D974EC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717645642;
	bh=iDn49EvmzVS804gxJk4UDvSyylx84fXrRz0ReU7dJP4=;
	h=To:Subject:From:Date:From;
	b=JqVDL2UhN73YkjDLtzm2kiskPl7Ppk7XfPrvUjBCKvIAojU7+GeUtF2pxlYytRM7J
	 P76lHHV20rfEd4j9reJUdeSyHWKuvMMW99rPunZDU6cAPG4QBYyIc7cka9rRZo5D4O
	 w4/AW64Ag9p1Xdp1ysdcxMF7o1/1jFPTNzw4lySM7SRgerwWFNvsKi8TaUH2ojHeCW
	 aUc5wEeeV79ixaCpDRA2VmSMX8JQWk+mH75kW4GxdVwN/g1QqnazqeDyQiMr0jVnfb
	 XegTUaJthjWKtkSGnLkRzZW/y1DpYK2ixGHzIHIe85EDnYDVA+jlEne/W1B58n7Ruq
	 dgn9KH7aeMWFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE58EC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 03:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764564275.20010.17005248288614441587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9701bcf163f79d6e54ef7f963a5567e038fa911ffcefd7557b7c6cf4efe8476
Date: Thu, 06 Jun 2024 03:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717645642
