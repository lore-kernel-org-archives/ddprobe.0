Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381571CF7A0
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728572154; cv=none; b=qqPqf1Jaw1b7xCkq4FaQHiXIR0y5JL55FaXl98D7YCiYmFLxrlBtI0baFtwS7MEphd7J3SQUe2OEDTnE8KCaowp5L+39SVdxbgaB9v+tuuDxkNJpl6Jv2FvhfgZrdyNZnCwmI3Ii8MAayi+yjkM3QurSqHsaBQMsewk+9NKoMOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728572154; c=relaxed/simple;
	bh=tA2NWlpGjbdkVTX4IJIeUDpL7OYVVyqW0dAvKE0DnrE=;
	h=To:Subject:From:Message-Id:Date; b=mt+F1XTtIatFVmTTwCndDnvWtXELJzZxhNSolPFNV6PhclZ3sR3IRZTAReUF80BlyxE0ZuVa1U399vt3FhHORNFcta6n5HOwdvyOK7tXup6xWi4IDmjCwFVfCjWwzigw9YNGruvDT6nCzJ/88R/ne3fvRE2C/hsUUdAgsFV3H/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azWf8mYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azWf8mYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CC3C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728572153;
	bh=tA2NWlpGjbdkVTX4IJIeUDpL7OYVVyqW0dAvKE0DnrE=;
	h=To:Subject:From:Date:From;
	b=azWf8mYlu+FWUt0DbkgJmCGTxN7xqFcXTdH+ad6nwqxmh7lVvMncEwQm/WY2ovvFS
	 gUd3qkB7HavKjtowvfaWhhc2hbxcGggV7yapD0Wj7PGw9L1JfiNmXQqhC84uCGLqCu
	 TTadARuyKbrMlDZSflJJ1tlxGTCojlZz9QscB/SZZZ5m6ee5zQx6bw7uasTBOddO3L
	 Rd9Rd9yvIXMzVNGRMltOvcZuNgiexUzFpzoovc6uBNxJe77KKlNaF/Gf1e461xuE7d
	 oXL2H2Y78LPfazyv2D6Lw341GnVpyJ8X3HMLdVh1V2P8d1UnOqjZWCOAWB4WEX1xd+
	 QlSIE1SCrZSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB95CF11F5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172857215363.28124.2383152023713019413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206df95a421f85ec4658ee39dc8986755ba92837b4ad933c151cb643dcd80f53
Date: Thu, 10 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728572153
