Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A0713B8D68
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765744974; cv=none; b=Zob7NJuu3gFwSq68LgAbxt7/ER++fh8TA3j/kW0xROzaQ+XCv6a4+xB+iEZpgRPEAsMZ2H1OVIEx/KLQZY08mDgo3Rtk12hXpbNvxv3AttgmuNTcWIJzPnkjSspqAk0KntSpT+JSHgZD72dfuswNlGm3DFYsklGqJoYoElU3mNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765744974; c=relaxed/simple;
	bh=mXg8u0FU5l8UKSonOpG2y02eYzn398huUoIEniyr2Aw=;
	h=To:Subject:From:Message-Id:Date; b=Fo3fhACtQqAuVltxzTgWmjDhNVOAxI59ugHZbJRE3i4y7GuQNkAa/km6C/9PwpLp00xwFjpxcK12bug89U3SwfGes5aTwncNAm19x1UY82Q06xxlhFS8RoQBGjTY6XAJX0xAg+U1kNncpljRGThdfWUjKN7uz/LG4VZ+9ZGVgyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0MJRdME; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0MJRdME"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AD8C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765744973;
	bh=mXg8u0FU5l8UKSonOpG2y02eYzn398huUoIEniyr2Aw=;
	h=To:Subject:From:Date:From;
	b=l0MJRdMEgDshN+3eX2KZ7Nr9nD1UpKRJSlPluxr7mkBrx1yyKDl43vC5D0iyEdbFs
	 duCezAxzDBE2oc7hk4iL8q1xEbZqoiUWKFuLSMTMvp9BBjDu4j/u9FYOdA2xu6Y1Ed
	 Q5IicVSW4xCqVlXEra+k9aEARlCrQ7PZ0Gp5jU4JVcgv9uXMIqwjGJ6TKUZx6RWpwq
	 M50efq6b++Y95fVWK4/tVfwuv75m+u1kcFg+p8I/FoFhysvzYqUVy3uDB5wbwDDUEl
	 4UB22Mfn1vG6p0JrNI3I/LWQIr5+/CFm/O153jHktMH2PEvt13CQtWtvD2Ne3qAXx9
	 x51PZTKb2pgYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDFD5B16C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574497358.3040.9488215197837972437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f6e370df59def2ccd551ec7682693461b6fc327bace429649737633ddbc3b3
Date: Sun, 14 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765744973
