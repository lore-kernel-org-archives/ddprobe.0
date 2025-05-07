Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F6E1DE4C4
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746661194; cv=none; b=fodWDhBmgV3n0gY85qNWRSNcDaGhBhqlf5vY97NXaDlCH9h3X6i43O+IzsGAtmI12X3aokfbG4ccpeIphwDpFSwgo4TA5g8JX6nwOE/JRB3g9Zz9FfzghXFpuz6OgzYR14zHtBI8t7b3W/Kkjs2p6iNwhpl/Yg8cUUPio0BDDBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746661194; c=relaxed/simple;
	bh=h9vbJPq8Xn8um+A9jR5EhbCucnM3IA5W5UhlpWqUzdQ=;
	h=To:Subject:From:Message-Id:Date; b=GgKw43o6ZZnMhVRKWcw9svfilOHZy+wxIJEv4cY9EXENy2ZYDKdYRPGxtk/VwvBh018iXs9m+DjGIGXrdCzY07GkFT2rgG6e30+oAZ5zmE6m/TOyzYzXBSIxDmgIArqP4qn0DaO9hbQhlKLwtP+1mShSCv/0Y8Dc3wkok6mgxKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYJRz+wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYJRz+wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4E2C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746661193;
	bh=h9vbJPq8Xn8um+A9jR5EhbCucnM3IA5W5UhlpWqUzdQ=;
	h=To:Subject:From:Date:From;
	b=gYJRz+wo+xpdLVysMMZHD3bv8b+PlE+Y9fZjetCypM/pvc9AG5WGrXFFxLc6ps//V
	 Z499Xfj+i7S7WdXmHhf0Vj95QdavnkDsc1vpai2xbHKszLulK8icalw0aPgvJXKptG
	 FkTpAILoPJ54AjgRyp2zI1iBmhdJrzUpLnyVhQCEgbsDDt17sFupBT8KJBm1T0rzoz
	 hZihjQbK2VkhAGJfCGbSIFnKeIQGgYCHl4A9Ai5OoqF4OBS67wLMegHs0DRNImUS3w
	 jWqrlP/w/kAd8KfEYlJm40ry0oWKwImA8crUyAuXYGdc1WT4dXp+Tf8nAjirxGUB29
	 dMxqjViRNlQkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE38C3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666119357.12841.576100062736836355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4ade6972c4f48111cb873f3a9a5199e035bde2d644d9d36d934597ffb42e732
Date: Wed, 07 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746661193
