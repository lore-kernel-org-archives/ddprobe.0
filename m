Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114342D2483
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776873454; cv=none; b=kXx4iA+H0AcL6UtwCJN9bZKDKiYmbN0OpScWcbtJ4Gh6uG8Wg6lRy7n6ES78lm9NstfKvKo2XvW4EUL3BzF4Q+Wk1sVUrdWur7hQoGBwwjOYWRTjDFLDjbW6r6MNxl5XOv3SrF9Qne2KAhSTT6qJOHkHncus8E52We0aX7FZyWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776873454; c=relaxed/simple;
	bh=TzJk5e48paBQSrlqXgtBRG/YCy9E1egceCu7EDSYFF4=;
	h=To:Subject:From:Message-Id:Date; b=gs05xlyqbBbkxTRZyaVlX/bHUBG8Vt7i/owmSaYi5kLTGahcjmAl9mZzvYhRITtQ7NQpGr84RSSq69jAAIR60zqOITxEC1a2PQI41UwkrHjbtWgHh0JGc38PppLvcMIGaqcd6LUYV1QFaR9IpN1C2N/6aR/yUrqeGi8Qbkl+E98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atlW38SD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atlW38SD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89B4C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776873453;
	bh=TzJk5e48paBQSrlqXgtBRG/YCy9E1egceCu7EDSYFF4=;
	h=To:Subject:From:Date:From;
	b=atlW38SDMSs8idKA5Wyx3Zdmk54gYjOjlYGIFdCYH8p29vtGB4p89yd4E0E/2y++F
	 n9EsJdMmhvPlzqJwmDjXP3xC9mMaCXbLMiD8VX8ugXcjimDOxboIxllJbTkiaxstpD
	 2FjpfR4/1SS/RxjYy3sP/pml2PRoHYMgkCilhzPn3v1dfLlZfW4XlUMbNTlxVCDZsC
	 uUngPzI2DPPq/QIwcLs57d8cNOiQwQFugFCyBAjTmrK6nUHqxpFblHcfr3CsCNQQRf
	 X5bo13rdTSJgCu/Kc6aAL9a0NwM1V9UkkJfzvYjt3ep+GX8Bf7v4YfIT+iPQUx/Lsq
	 +duazV+vYxU8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA84FA1FC7
	for <ddprobe@lists.linux.dev>; Wed, 22 Apr 2026 15:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177687345368.32336.8870913887284547534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d674394d0b97bd8dc0556539b3738ff74048e9223f617df3389dad37a9f22202
Date: Wed, 22 Apr 2026 15:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776873453
