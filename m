Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FCAE19D898
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744962595; cv=none; b=K0wcKbrSsyBSx3QmpvBqjsQGD87lVJ26CtnTfDLN7OAHg5FjCcWnFZsY/Up7LlbUpjXCMjfncdzgfYg82Sonmq+7+Tuw25WgC1PGotZi1Lc53rXxs2t4u+nPn450KbFWzfKQP59jGCODZsXJ/ja4iX/nyteLNn93wo1JNdsswd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744962595; c=relaxed/simple;
	bh=Sp9Xc9Kyok1MaHyjpUHr0XDkwzc/1jQzbVTJCGinvWw=;
	h=To:Subject:From:Message-Id:Date; b=KrV7GX0Y4zc+NOO9pPXKTA1tHGZ2P9NTIV25tqHpTgnb5cYvMA9SQsvXy5C4j0LAa/AtGWE3rW1gEj+fZIbQ0KDRbe3cB7QUWvRip9XVo3CLi4ry6PgmmpD6eul+0YKFmsY2FVsyoHw+h5wOgGzMGFaQ0wpfSMY2W865Mbl8SE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fY7poZIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fY7poZIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD17C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744962593;
	bh=Sp9Xc9Kyok1MaHyjpUHr0XDkwzc/1jQzbVTJCGinvWw=;
	h=To:Subject:From:Date:From;
	b=fY7poZIXbgHR19uFgyzsx4ldy1Q+/WThjh8rDKt+ZtWt9Q8IRTVl3Yu4Df+ZUKxIz
	 pqJ1cLXvoaCbeRFQYG+h1lfUgxhpFHzw2Qf7pGI19xYKeq0Gvds3hH/Z9ELzuWLCSk
	 uQcnsCr0pP4cXJFRQeSXHoelvtEd9fE4VWRWpZEFWDF4t2ni4px8tYwL4TCnAcrYvZ
	 6tJrl/UiiEuTDysX6sDivs+JJeUL4dzMrDOs+OCYYoCKgvsiusMuPVVxsfOoVcBuAn
	 1QVFkWgn6WeN50z+ZLGyaFmI/HsD0JQspL8ppJnOdKV/ayXfd9QZm1HukOh8fRuSzc
	 fOyFkGktQEQxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9633FC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174496259359.14658.7019048566136962734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd0af24de77cbb421140df81c336a4d381ddb63fea7cf4543a24a3441efb3d60
Date: Fri, 18 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744962593
