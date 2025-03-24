Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51356143895
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742855994; cv=none; b=nRO8r+e6jPpKXi+L1n0j0XQoUswfnRxkZH4hli7hnDsi8Fhm6Xv62f0DIvbM8dtnX5L3Qwpvg2ZMbRD/ZwU/l68NhL3sD7ZG2nBYX2/foGER12jCOU6H9JCcD+sIsdR+hCtZA1bLm/tcoN2L1c7pX8EfjmDiww/02/+wunw6uF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742855994; c=relaxed/simple;
	bh=q6cgV353IQBLQ6HVgjFIo3KXdh/d06DOGOGGsx2M/ZE=;
	h=To:Subject:From:Message-Id:Date; b=Q6rlImJKBKOKvBgQGSm1o1O2BWhEhQnF3XWx/wX9iAJVFP3woVhLmvP7+wjJ2o5IHstnWnsE4YdM+nKoUcV+ct46KlAoHhLS1FpPVpKkfXEZu2sNPBpfU4BHYDazr3GsUI+K97ATxJZ4qLBxu7H60GaMKkSan715J3PIywXwZbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tY+LENCc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tY+LENCc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC812C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742855993;
	bh=q6cgV353IQBLQ6HVgjFIo3KXdh/d06DOGOGGsx2M/ZE=;
	h=To:Subject:From:Date:From;
	b=tY+LENCch3wKzCB5TCrJhjn+DskUDYBIPvVZpY0mk2+VOPxfR7DX3VPcLgUFpFORc
	 GqfIUiA4gxwPjxHcoEhaxJYA5ViwTfndHhiVo79Asc+4491a4qGosXK0m+vjeng5Hj
	 YCfS++274E2KLN+DDW3uiBCCQWIIDo1UH//MWb2bUsJXCxNNAkuSg2y6IiOgMBp5PG
	 cXvfyrLaN3syjZturG2N6sM4aI2X6Hz3BqLTpZwo6ZrUqCc+2XCqAQ4ruyLDiLhqZ0
	 KiYuRUntXpiRpYyVZy62gKDAWmAPfEClZZu8CVYnSfnzyvPoAX2GtO4WWIeINMJ4AH
	 M3OFOXNwQmr0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1FF0C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174285599364.29021.15994490018193121957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d2ffc57d3caa4fc5feb53d92742388382222005e482eb3ed32f69e50c7b2c3
Date: Mon, 24 Mar 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742855993
