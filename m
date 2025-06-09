Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1880A20F093
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749468594; cv=none; b=oQ5LO83vLC4YTV0mHMQIRkzNuoP++NzFnyXbyoHAVai16GZXXLjSqhryvOiCbDRoIklK7fclF+/wjDCeTEqTJrPDPpN3lP9VhVA5SBZTLYrfU9q0e720NMvQSpxR3RwQVhEc/Ql9FzS//I94XrEf4hqr6O9b1VgmVmXSaWJHjUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749468594; c=relaxed/simple;
	bh=QCnsVCRSAoC0z3D4L3ThsqW4yA/qY0dGtUMxz0tAoj4=;
	h=To:Subject:From:Message-Id:Date; b=sTmAdILKI1MLrZt9wB62uuFF6P25FJLKiGz7bqLVaHstm22WhqGn4M/QNPYcKenUrcD28Q9N0/dTWCbMP0WFB10okCUq10nZyMI9ZJWlpCSeNGiSwyGkPyO2CcM/KxjjdTGhcqZBPfC/GamfmZ5Rqb7s1pPZdQkYjUbrqVMZOuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pib9I+e9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pib9I+e9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D95C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749468593;
	bh=QCnsVCRSAoC0z3D4L3ThsqW4yA/qY0dGtUMxz0tAoj4=;
	h=To:Subject:From:Date:From;
	b=pib9I+e9narlysmAeGf4wne6ujMFS53ULyBkmxoJmsKd8q5tnjY79mOzddEDIGjit
	 fx0QYLpnkVd++PAwxEa0ivfls4joEh0Zmn2L9HRd/8qU7oAbfB4Uhceb/fkzPEV1y9
	 y3T+7kFFhcinPVJAzlWURF5DZYCqV9AosIOrpM0EyzMva6G7Qmwl82XDAoixYcnzq8
	 a4RxHbhtZ4oJOOvTlnf9oMoBUugLvAoqw4rY+H5NXF+8Mf0qu82SzauP1JU9tOyKx2
	 7yPDnLF73feg/fXy6Kh6JI8DJm90g3YtirsFAv6apTbWfZxpBdACisauFyNMQSf5Hw
	 91ViuHdFRE5yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E44CC61CE8
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174946859357.4541.659633420696758014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a97f32d314a82c9ea45a97405b8034d76424939d5c21e252996be363e1046522
Date: Mon, 09 Jun 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749468593
