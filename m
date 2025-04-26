Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B99686348
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745708994; cv=none; b=DgYgZiDNQFs2IuadCMKV2FMBPhtV1RM3ufNli0+Wi2XfF9s06ufFqHBImjDQ0AzZ2CQ0FqgVvgFYRU6CywoeK+K4ctYTrDUmOiL9lqTP3CQ2LvYRtfyNYxKQOlohuex2AZI42wBoHD0wgt6qKcUSvHGyd6kcWG5oQUMe/TJ1aQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745708994; c=relaxed/simple;
	bh=HlE5pI0dBhtFhjsSE3Qu+XnurtqcF9LhcI+11N+IOpI=;
	h=To:Subject:From:Message-Id:Date; b=X/aAJ+Ug97RG5ZZdpfFjcGwEGFxLL6uIFUutsqIOWaLyAWnrt1ZkUoWpvWOwjZDniMGG6nU+xAjp84eswuzR9tk0Roxk41M3S+S2jGUSVSvMr7DPX8aBbZf0F1j+XXT+cUcF7ZHzyAqfXcVTleCFoPACj1hVor1L/SePLTabdyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7xUfqZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7xUfqZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745708993;
	bh=HlE5pI0dBhtFhjsSE3Qu+XnurtqcF9LhcI+11N+IOpI=;
	h=To:Subject:From:Date:From;
	b=g7xUfqZfyfYF5HL3JR2qyUesO0v6Vepd/wHbW2myinKZok0lTMVbkkSz5Et6HcNJ2
	 R3p6IzRarO0X9E6Cfuq+tYxdOcOqe7oe1mdCkz/nQUlqQqdT2QKUgrXKL0KQfx0CLT
	 WIo78CHTFthdLzDg47GX7kwebZrY4nlmubpF5Je72mvFYyFPcYm/nprOhY4+3YtEAk
	 vUGZGUjcMgbWIAzOHmi+bOmKTC8OJU1u85JtZFssyZKO6QJvy8IELp90narik66XQj
	 aUOq512md1Mq3w/TX8rbYDo4yFr64F6cSW8X2j7Ds0+xZe2EeU4foOE6PlDf2+vfK4
	 Bkwca6BAeP6jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F06C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174570899357.19595.12899455583435504927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94f47a7dfba2d646564774b6f72ba57e6f54ce4f7b51aded46ed77832f0bafa6
Date: Sat, 26 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745708993
