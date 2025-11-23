Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADB74A01
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763863914; cv=none; b=V0iP3jEr3kECgDEdXDLxJ5w1EhHaRKkdLW3VdOLuM5DI2nvpwzqUN2UVif6Pubmp/74tJZPMZk5Ooaqx7W7OIspxXw5+g8vmGngBwpi3tu//770lPv6JLrvXwPr1Rn3q3iqLGKKqReGIzEpOheMjjjBpxe3eXOM2p7Izs8A6nIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763863914; c=relaxed/simple;
	bh=VyqNvKTKavm0S7N+BjGH0PvOl3QQGLfoJJNLYr2++gI=;
	h=To:Subject:From:Message-Id:Date; b=SL2LXvi5CeSwEZD0LaHcUoO9ITEShD2bQ3cwO/JsZo3QoPY09Iuso/3INT2N6MfzuIvcln1h/aK2//22DKYDt0eiQCOCOT5MRn7TDoB7vHoFwJ+wo5vaNk3HNc7a5zs/liU4AzBZ5fnRXh3ygOLF2WbESi/AaUHz3of7L0/m1hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPazFdPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPazFdPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE02C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763863913;
	bh=VyqNvKTKavm0S7N+BjGH0PvOl3QQGLfoJJNLYr2++gI=;
	h=To:Subject:From:Date:From;
	b=FPazFdPRF10CXTLCpAamHpijp3Rmy+PVgxJ9/Ka7vBf9ofLu3MnEFh0B9Kxd7A3zf
	 1lMaE849TzdUQgZIQEji/gSD6sya0vvR3UxoyIb09skJBMiLobwfIjYhy8K3VsKQpP
	 3RRypV06GgKytg69s8mca7Jx8v2thi7ZkHSiGA9OtrxNmy5nqClPCOsgHPIh8drKZ2
	 5FROPWymsOJaOKIFmCsvPiEc/cfQDYxOF6yNvrNcgFB9602/ppc5tUAmnuwkka8gVN
	 RR+nvUDMNO69xLr7gESnbZRf+ii2T1cWNXZR5Yjn9XGelszsqmWXVifXJrADCs4KXR
	 KjFVzv19eOilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9954ECFD312
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 02:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386391358.4282.6520544209677893019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5549b46726d7b828a31c50ba0cc0664073cf6ca1d59ccffaba407308cba04fe9
Date: Sun, 23 Nov 2025 02:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763863913
