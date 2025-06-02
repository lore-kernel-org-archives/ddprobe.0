Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE2521C5D72
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748872793; cv=none; b=XYgpBewtR2LRdNIZ4sUte6WvgXzUQ42P/fEVR+rO2L0Y1XGju8BrppLwhzt5ogSe7nThOIzHuENNODDoSvy+DtzYtdveCzs1s1ZNkw3ANozEXl+qMktta1Ds874Uu8I/YszuXwKqVOOmMs6b3++Kpu6ZvgFvxHFqpn1hfo8JzRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748872793; c=relaxed/simple;
	bh=7xgn8WXJWJgSAp0W5AaVXu2JhFE0jAkSjeXJk9iqJW8=;
	h=To:Subject:From:Message-Id:Date; b=ChUNDmwUOn0kQJvI0n+iPiq5iUBeId3YPqxuT4EJWc+okhgDIsSXAgCM2Uhwa74DkwoWRYzfgcLxDbJNAKjIfb/md2n3OiUShHXO7gYTJ4yo8UJ5Lp1x3/WxnI8XnRQuibsxPoBs8jg8nAfH3vOnf+AQQunJHdu+vuoQqOND7bo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtqpHE9O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtqpHE9O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC27C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748872793;
	bh=7xgn8WXJWJgSAp0W5AaVXu2JhFE0jAkSjeXJk9iqJW8=;
	h=To:Subject:From:Date:From;
	b=OtqpHE9OB4A5C+gI10cKosyUmTMdK4/5rPjLa12MzNa3L1hfwg/K1GMYUWgZ7/krN
	 JJuMrw7hLN8TObYTytkukDqt95MV5GCY33LmKrf4ZtE4A5CgvrbV0OjpsdLmcMsMh1
	 MP0nFaxyRFA5gP+WwC4ptWQq0bzfU1FIsfBjHfDzDZfx5ZnhPjGIMI+mTy92FUIqRc
	 /68gg172ws4iN7jKQtjpP9NJTjoKpcnGIT1b7dh1YTwfuroBdBdJOLK+c5fGqsk2QE
	 PGpTbGK/hLzYN04TjORzZrcjT78Ck+83XutxZfrw+lLHo0nq/GU3lIPdpl/fy+7s9U
	 fGkezeikSq4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F582C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887279357.492.106022858694557977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52d591a7b10e1e57829232ae93738e204c52d023ff6357d9b672716f339934f
Date: Mon, 02 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748872793
