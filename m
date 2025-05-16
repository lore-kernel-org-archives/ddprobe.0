Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388153E47B
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747394394; cv=none; b=bS5B2pwnPf7fxovHPiCgLN23DSgMdx6vXt/YlPIyKAYdR67BUeGQfzlOJ3f5qlGYa3qGdmyEE2c7beOKMEW1+2QnB1GWDvxm/UY5DwC9kYHKRZKsu/DAfbS7b+XeffK6zbnhTVCwWKpTL4swCwLqugiDT8aC1+NgQc3TnchvkGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747394394; c=relaxed/simple;
	bh=N4l4T+9i9R8CWxDBMELm5yNkMQxZmBkW/6wa89cfx3Q=;
	h=To:Subject:From:Message-Id:Date; b=THokE/K7hGhESvTXPKoGr/N6BsXdcgxWdUQMr1nv0zw8yUodPzjXIq2zykViS/XdurQB8RfgyCdWdXJhDOFii2isUhzFyC0FOVnhoyLwkokmO8S6Wy0gPVmS4vN5F8wyuEM8gwfnm3HwOvnuWdSlDMM1LjFEpNm7y0s+MJi8vBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NYmjah/A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NYmjah/A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AA4C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747394393;
	bh=N4l4T+9i9R8CWxDBMELm5yNkMQxZmBkW/6wa89cfx3Q=;
	h=To:Subject:From:Date:From;
	b=NYmjah/Az2wOym7FIYDGftrG3UmgszTrMDTFiNKpqoftXgzdLpI6Ixht/skVLgdvE
	 dCbw1NA/U57BreNHxPSXITYu+iT/gv4f18jFKv9YS06Tw3IDpnGGWYdOggf6PAo9K4
	 zvYCmn7McmPRAbW8oCjbBZZg3aGnSxoelahphyIcq72cCCAG7SswY+kPAY+lq/qpka
	 XonZiwio5pCU6hefwyt+4J9mnoYcGx8t+7yExXfIRfeLMt+sQDRuirIp6MtTMB2ZJq
	 5mC9aq8c+dcnkL3q7qxxKNDYE8sjzAl9MswEf3FTulKuNZQ3oqUJl40xbSMU+jyWaf
	 +wovGkKBl91pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906C1C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739439358.5213.15759576201716372416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495b7af799b75424a16db0c8e1c0b549f8ea2e8104372445eba8821da2003901
Date: Fri, 16 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747394393
