Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0141D363F
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719950723; cv=none; b=gruIqhWdmRC4Vyb0YthHUAXdI0h/3mXH/bBDAxm8HFZYkPlL0sZAnlCy2Z17OknyDQmR2RA8YF9sXAloSnkXe1LkYqMRK/NyDWpyadqHOOzMmf2qBtOQ7aVCiErbExQpTHAejXJm5ZOIx1F+6+lv7LwDclQZ880SD5hWwAZ4PYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719950723; c=relaxed/simple;
	bh=s209q0V3+IJX+5Z57bv0agawSjF9DhaVWSlXoGy4uRA=;
	h=To:Subject:From:Message-Id:Date; b=cewczbC4W6dtSrD/QH+0parkObQMdHwqUkWG3B8eu2ct/gWEMYFUEfHXzoGejSCQyKMPXFaKJPXCeWF4QCNFu7hCEcyOLjSUCwS7efyy17fzEVVWfXjJcNr9szWuZ8zTM/4DbJPglIubh4rjSembQErW3DVdFUHbBctBrbWzor0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXrpqRjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXrpqRjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9B11C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719950722;
	bh=s209q0V3+IJX+5Z57bv0agawSjF9DhaVWSlXoGy4uRA=;
	h=To:Subject:From:Date:From;
	b=JXrpqRjyTZZvEDvuZSIYS5eMjafTjHYalzSl5ycX6niQgmBVBe/XlMrAmjf7HCff3
	 0X4l5gjRUAVxwUV6ODmLJL374WS9zNMLnM6COid+4pHnXiSkIs/YtV1uRC/L/7gBZs
	 yU3bDZlQx+90HygL3phHjidpRe4/qqGIDdmG4CQAX8RzCHOxwaa7v5yCkVri6ZiYLK
	 eHw6qOwiCdaoC3gx2GAtsn7xjpVsRnRhU1SXEPAYYYW+DVZxe5935unFrtdyWlSfMz
	 aCc/vtKYUDjsXn5v+YcD3+uTHc0bZ77YLH4VzxTJboKoMrMqk3I4YvpQT7I2x/MxN/
	 wKocr1q6Sno9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFECBC30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 20:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171995072275.26725.16732097895209518276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55337c70bd9cae63a633f458fde97ac26300f8df4411cae5881aedfa64647559
Date: Tue, 02 Jul 2024 20:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719950722
