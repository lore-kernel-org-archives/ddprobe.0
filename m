Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1429C36D9E9
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772973894; cv=none; b=aWmpR0bJ895eKPuXIXSHY6gILiVkuB7JT8dM/h/70uzrFIEv6hBQP/LoMv0yB+hXbru5ogxJ8P89DtlJoxaBUkQ6N5jncKdO/w8Tia51DUUdvB7+fq+YkSktsABwBBeJdp6O+DZkaKrH8Z4W0hFk0dq0NDtAfd39geV+rkqd0WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772973894; c=relaxed/simple;
	bh=bbul1F83YY7oOCFdeFj2VQx4rTdpI4uwG/fTDoSfb+Q=;
	h=To:Subject:From:Message-Id:Date; b=uKtDoYQmEOQY97n6YAdb4mCzrFwfPhElDfCQ2Lt9qWZ5XHr9+CLNoZPUDIAUZxHb5YAyQbqpKohHBHVjT8MAdPNJa7omUej/ZqOBrHh34y3A4sY3iTe+xaczPrbfc5j5qL766+SB4MdlOiB6SYLzqwZENp0fb1b2ZQRUf8TobJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f2hFu9IH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f2hFu9IH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEC5C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772973893;
	bh=bbul1F83YY7oOCFdeFj2VQx4rTdpI4uwG/fTDoSfb+Q=;
	h=To:Subject:From:Date:From;
	b=f2hFu9IH9wGmeujTmDu4wCA7sdt6BMlPhKZ02Q3eiZbKk7vm7tWPgfBJo9oqPVU5Q
	 QXfNir7XkONC4BK3XpNSavv/0FN5J0D51IPP7ZonuYqdOgFa9nfQrGoI+vG1+F6BG6
	 qzqigo8n7JjUwKAorYBG04ZFkguAcMe5Hpjb0TNNiRXv4nnJn2EjKK6yWXQJGcJiTo
	 DbrKQ4/CHeJAzU0nnFYh/plzeEFYFzvSyvZpelOfuUxYC1p3pDwLxOG8jPVPbVW2Hf
	 0lgVVOi4XcwO1ZTVQ/+1gtTbi6XwGGLZirZ491kMVL8d67H/O1k1dlH0TVmxgXIUBb
	 X02HwJDUufVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBCEEF5866
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177297389358.3008.3361641395098110542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f648706fa00d60825e82feb613b4576ac77a81d1909b0abc8680978dda9706e
Date: Sun, 08 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772973893
