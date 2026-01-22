Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB60346A04
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769094834; cv=none; b=mYzk8+Dz6Fg6YkJRqarUkYMz762ZDyW6vBNw5dSccmWkgrB3VGLrhQHd8D4gYHw7zLcZkR7zbmHmPWVp+gE/iD51EHS7xMIH9XMRSr+JZUmDrpSq5g+VDtZhqGKU8sXO8P+yKwvszRBfpDaim+IJFiLnKXJEgCOqkob0vQoHOpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769094834; c=relaxed/simple;
	bh=2iu7OP+1nP/1rXwG0XTmgDwarKWf1ZXdwU1NO2XkcfM=;
	h=To:Subject:From:Message-Id:Date; b=dw3at5WRMKJ6Z4WhvkdObkpYHaJqtIeSsqdopt5TPFdjQCWmb8Bt3PDQQ7tHGoO1soKnYUajqAUlsFuPhg9MgQ2mW3BTcWbqfKXL1LpzfA49BJf96afasoyqwdjJQ+rkg0XNcGipgZxhkr0yNE2GgYh6uFzN5VCpHsBIFX5GOs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xp4hi/sg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xp4hi/sg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78C0C116D0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769094833;
	bh=2iu7OP+1nP/1rXwG0XTmgDwarKWf1ZXdwU1NO2XkcfM=;
	h=To:Subject:From:Date:From;
	b=Xp4hi/sgp++sVgODx0P7OHQDVmRBx7aXTpReuZGxRR5uidA/3QCu6cMGdje29/2Sn
	 fVXu2BTyeLQ/FX8EfYtOo5QSpbUFoFJFanT2f1dsC0EWxvwPoPT4ksosq/2dd7TyrZ
	 i+brUh8+MCXwCKQcXgiravU1ArP3blObhcxlOC5mG2+IjTFGG7rdRsBrU99EvNgcHi
	 3Ou1buVPt0qURwaJBbOgUqRyBf7F+zDJxDE/rvq2Jr9boqWjKsFczdhok6u+qcCYFr
	 Be3gdAyyLaBUQH/9SMIoE2P8mtm/mUYIlo501oXeLPakI3pT+VU4BjJOJ02gAcApAz
	 WYpWeZdCvCMXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D77D3EE74
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909483358.7040.18205868333811016177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 320a97311f3fa1b07cddc9e11c674777f20ebac92ff722484fdc781c2ce9fe82
Date: Thu, 22 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769094833
