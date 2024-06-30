Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5498B2772A
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719741263; cv=none; b=QvI89yBasVSUyOkV6/u2Wb0QIkF0kG8YtcPEel7KGoWh7lryX0ZDdWaZFxiKhHIWhVu8npc0FTRWqth5jLTVvVDIdlkYhg85pfPeRkVtimvJcXp+aBktUtzD24frX/6f2eexnMGitFxvOdQTd2TYikK39xyu40EKZ8GRRK6oQ2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719741263; c=relaxed/simple;
	bh=bk9abR+ngB23DhgTdY9VYdg0fhICJtMu6BC0epnNwGg=;
	h=To:Subject:From:Message-Id:Date; b=B5VMsBXBtzr7xU/XgXOGsyopMOe1VeAEWUnx3MpNDUh1vGwpt38b2L0Hhx/FIHZDB5+yTKy8yzCiWuCNY6z2gGSrHpATD8vkTqyTvyJbEQieuidBOLmxQbUKMRZiIgHH7Lzr2hZfyM/MSjPBoO+4qMmoyf70EmjGx2u8e87fDLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sqvt5S17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqvt5S17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D477EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719741262;
	bh=bk9abR+ngB23DhgTdY9VYdg0fhICJtMu6BC0epnNwGg=;
	h=To:Subject:From:Date:From;
	b=sqvt5S17MKOSVP5/6chfq4qN5nb8EiphYjj6lx1CtR8pSolPTpZSD++3Cx5HkLwY4
	 e25qCatHChCiC5nnnVM82VnXHLgYtCVpJIbNWWA9vip5czRaMieJe4goGwn0cWv7cR
	 aKZRfVMM7Eu3F4M+geS5koZNfFgWT+MlVkTgojgP5FlUPO6HaI4x6Wq/4vpb+SURj/
	 7AUktpmO7lRf/w0wd8MLXKF1JcAOEwq5yqrXOzDpUBEVAU7rv2TiQXexxvUeoSvBRi
	 hUWpl7i4fnYq2vUBTgMKS+ZMaNESByRR/0Z484v6zJpxuIj7uUi0Wjf7RwkwB4T+lH
	 X0tuyY4cCbyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC816C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 09:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171974126275.23685.3261292698531205680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6102563d812cc54d45860550f939d049ef897ab1896d40720f10e3f7ae780b03
Date: Sun, 30 Jun 2024 09:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719741262
