Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3D4364059
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785981634; cv=none; b=tbQ4MRAzFPcl7KtHG1yjW/pz8ZPe5H7JmXAPTGtqXPZSsnYOt6DrfciEBbOkPMNp9sbPcob+D3XHh4ZducJ3T5ypZ53WqQTal0t4epTh9QkNl4GZRaYzwszdkbFerBzVmCqvtmym7khH+PjHrZArqB60DfOqsF4XFgZHpGhrwjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785981634; c=relaxed/simple;
	bh=5Pq6GkXCq/s8Ny+/9LciPk1gNhWs2LDjxtTJ61J9JI0=;
	h=To:Subject:From:Message-Id:Date; b=tbz4/ZxLSk3WGMxOrAlrJ9H6IwMXx1j/fBCJPSBvE8G9Vx6Xp7cvj4cMhcnYP6aLMwtselUfIp9W0/523xbTF8fYW19mDcqUqD0LpwY/243/6JRENcttGYFJnNaIQrNEAeZePIJg261bha48vXtirzoccPdBKUC608EXtGs4Qcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXvpQCrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXvpQCrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EADCCC19425
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785981634;
	bh=5Pq6GkXCq/s8Ny+/9LciPk1gNhWs2LDjxtTJ61J9JI0=;
	h=To:Subject:From:Date:From;
	b=UXvpQCrRWZpJR5rs/i3fOi3th3kW5XLTo1ddMNkN3OpP5COtqCRx6thQEHlwviJlP
	 DmlJCHgh0KjPYI6ilh5ZH2vx61/pIud1ll67sE4m7KV3PhfUc+SNuiaF3IcasauUDu
	 XWDoGLQVGZ1VQ/CL8dzl8aKkCTXn+sZsj9c0XZCUmGkhb6vLUOcrH919nGEAx+HPxZ
	 +CkMUtvNr+AMrFBlYjBveRRdaYJJSUYE2bVOqsPvIT9sJH7U+toXWiMuJoimFfYmJZ
	 J+rKD87WfAG5P/bVl3a7mRtGaDq/GG9zw/1y4j9b1Pp4Kq8ejOLRcuc6fKOsO43L1O
	 Chvi+G7rhtJBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB021C55ABA
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178598163375.26220.4419814377377881639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7ccd760ba72328477ad910c8d99a040dddfe94cae060f5dbab24d833e18462
Date: Thu, 06 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785981633
