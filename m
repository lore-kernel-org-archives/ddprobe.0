Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06C235979
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757990394; cv=none; b=CJaUOQ5u2V9LPK5A0ERxqxmyIjblYHNolwl5H/3dqBlAs0fej6BWnzm3mZ8iBenayMP2BhHEJOOZmV4ebke1WYCxQjBojnhkIT84phRh91X1Lp7I/kIJK36F0UHd6uwZf3fh/zsEPBnbWP42vuRmyI5vlwZZkt9K3kUP8LxEvmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757990394; c=relaxed/simple;
	bh=sJbx3zRsZxVyLmXUJnNee9JoUAVzIMyHqRUE6QfGcxI=;
	h=To:Subject:From:Message-Id:Date; b=mwi3SR/ZGcDH2IUqVfvhcL1+zDYTvd7dX5zY4QizH+Xvlbn9MMyc0FstRvni1cKfsNrAe9b0nKgiipy5DljyhSKZuGOkxtmE0AMacJ975AoEPL+71pi5/Im8HnEI13KHytIYbWCPHOxnzdulWxGklK7TULiq/pWoVwd9e+4HDU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bi5Qn2sI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bi5Qn2sI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F34AC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757990393;
	bh=sJbx3zRsZxVyLmXUJnNee9JoUAVzIMyHqRUE6QfGcxI=;
	h=To:Subject:From:Date:From;
	b=bi5Qn2sIAVt6mB8qjQoZEZtVjadenkMY0+LMcHSppd3BSVDCoUFmF1HKUL1Ps9Tiu
	 N0Tw2gM6q9favyA5ErpNbCOC0GGnjzEFadns1UlFedoA+b8wDJz0iMQ6iam5cHP2+j
	 fSqnCxL/lSsdx1RYPLjPThIPH/NBc3Goo0vBWQdSbY8Tg51V/JVoOBRXCllpGcYE+W
	 0vPnuCsUgk6QF65sYpKI7Ls+TB3758pEXl0gp319XdSznCkWea25A4mGrHG/xuyhLZ
	 fIZrUEmAX23mQXf4afA6g5EzHH0QW1lKcUXu/glzKNGlATMm0zdPVnnJJ5eLrbIRc+
	 3puCHgVrcq6fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901ECCAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799039357.14930.785765548036376680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1faf68417c311cf56cfc93745b711daf7f6f21123292cc765c5cd613333dfde
Date: Tue, 16 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757990393
