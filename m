Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF41255E20
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747031994; cv=none; b=i972eR6praD/R4BA0EY7E5D9zE7y5SIRFKHLgzYh/77Y7aeHKiTxO125B3h9Kooiu00lOX2QvxFcgdtKrPVN/4W9Z7cC40DwsvZmwhsm5XmJyEmstDYE434Y/UFzUcIElCfOpgnWsjAWI5tByl5G91brLhK1a/ZKcNsw2JMm1ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747031994; c=relaxed/simple;
	bh=4BsFNGmNc9jKgKRsF4LbxM2Ddu2+8VRe49jPGrJwf6k=;
	h=To:Subject:From:Message-Id:Date; b=rB8DJQ0hmRZh0RMY6A5TXeqZDNOSvJ8zC7Urfh3ZZoBeQmlwLSKT4yxK94zKBRfbACon0evN1WgzsBIgzi6twelpU37eSykVl3t8zyEF09Gb92wVweX4HNJfMKWOxiLecIcfTkbg+NHJ19dpjiF9gfjQzylzSih5hRCV8YonTz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CpqQe3bx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CpqQe3bx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E9DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747031993;
	bh=4BsFNGmNc9jKgKRsF4LbxM2Ddu2+8VRe49jPGrJwf6k=;
	h=To:Subject:From:Date:From;
	b=CpqQe3bxszInP7A1khejM5JPP1L37wuXrCUFCU2GU1umSGCGCGekOOLK5k9jFGyqZ
	 5YgJiNJqFBYzQTZDORxhUAhBpE3U4+wKKdYnniWJoygnet8H+PyofabBiQYFlKNTVI
	 S43lJhdV/929yBtYaIFJDuimlwqmU7T+FTCfRFycPJT7XRNQFAUoR/lizkZgGbb5M9
	 6vd3BINDDtk0wA5ZOu7h7Yv/uBEL9Oz1RH7J0T7C+B2vEkQk10C9JFOh/s05jEMwY3
	 +1tODBXZdeSff7/MEKkvJiSH3vmIyH44mJJsTvHqlQ2GgUaXtKQTrpE6LeaR6eA0VC
	 QKEuUYQUFFpHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9648EC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703199357.3570.4758344845666909898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a8eaa251fa4bca4cd97f424bbffe04495c2ab169117bf52d0bb71bf83deaf1
Date: Mon, 12 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747031993
