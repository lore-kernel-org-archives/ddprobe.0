Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A812136347
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743437994; cv=none; b=Zdwb76H7bC67W5QejAhLBNbtY2uF6ciNgNSKraWulouxgBUYMR6tsjQWnvlxDTCkpZ8dDki8zFbJsWYzHhMIEyHRRmE0BbIOaG9WLVNRIJY+wKbd/rXFKH5d/N5KLD0lBMdn1sk/eFCVOLb8AVvmwICOWGjM4jH21lIQzAEqEuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743437994; c=relaxed/simple;
	bh=OXXxjTy3YNOR1fPPT6BgAPPPkfGbOhaPPhd+JS9SEFk=;
	h=To:Subject:From:Message-Id:Date; b=S7Tp9eEv137w62XZJFEOu5Vtad+JqmILL83boPujhHvZKoFzEQe/hLK8crAQ+9/JOfv6/Gs6x0rQTEcH/ODRi6nz3YUST9Nfjd7TXVoGK59vpbGXG0knQObSOGfeS6MBFhVFLFr3bUmjb42nxmR0V0gr6XG2z1aWkh4IL0kt8x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=axVQ6GnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="axVQ6GnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA90AC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743437993;
	bh=OXXxjTy3YNOR1fPPT6BgAPPPkfGbOhaPPhd+JS9SEFk=;
	h=To:Subject:From:Date:From;
	b=axVQ6GnVsmJNNP0sNrA5YiU18IxFwgu+Mc5qbJ7cAJPEcohGH0I8O0tkoVxYel/dZ
	 cGb+yZ+VEQXndK2pRXtliBLq/6L1L+fTJR4LYiLYskY3gRa/DCgPYA4b4EEsTGd+0i
	 bqaHwIDu4jHwxkTap1hvOJHmrT1YrCsn4JO34hLv6DcwwzRVVjlHTALBf2Vekjbu0b
	 EYvlQpenyXq/+bj3Oena8j8XpXn/Pab0LSTSgN/Y1HJf0E4s4vl6zwQunaW7JpZxjl
	 09XskzwcWHdIUQWaxYAuVPDnCPwrUg88G1pLEU6X9SbBWIQyNUhM7WVTzq0/Smsr8O
	 MS2EUxJrkAm3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7976C3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343799366.32104.12837100790191235773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba212c11c8723ab44fb5b5409161691d9657549c574da98999c0aea32be254d
Date: Mon, 31 Mar 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743437993
