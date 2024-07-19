Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C4A12D74E
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721391953; cv=none; b=pdGOvAtSAJ98YRCnAYsw7OO92QlZWT2WpEx9r0EVoLjec63u/lt3gbIESjj80TwadWiybpajbg0tj6V5bahCr5Aty4BvR79C/Zkr86+G/imaSJI+HKA+udMM4Z7A8FbuKgYXre6H/XV6bM1Xt8ywUzkWrQ+fFIUJdx+xAZYkEY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721391953; c=relaxed/simple;
	bh=ESSuK9kR08ykgTXsZ5H1FN1qHFHPgrH3rvd2k66Mo94=;
	h=To:Subject:From:Message-Id:Date; b=WW/6IO/Xirwmt4y4dwD1FmqLUppfMexbORhNNcow0swVzlKQG8gUkA9DHKtjk+W9p5jBzGi5NuiVti41BjR+szzXUDCeh0aMJnS3enfDpf9hglYV5VCyinbUGuYmvAn7UnCvod/iiHpMuFECx/YmQKQpwRt6I7B7YLekXhYt6JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xr5t2Fya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xr5t2Fya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B8CC4AF09
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721391953;
	bh=ESSuK9kR08ykgTXsZ5H1FN1qHFHPgrH3rvd2k66Mo94=;
	h=To:Subject:From:Date:From;
	b=Xr5t2FyaDDhVlzQcTqwzGSI2UVgNSWUX3SVSwpy956MjhEotTn33igs8HG3UKbcDK
	 UA93ZdMnpv5h/B0VctRVKR1B/xDyPJPGxhJKXilhcS9tm7qhA3jC640+rMUmV7vDBv
	 ShnChmitqvpm6A/PKDh+OHvIkP+ZzqYFDyhNtkc3Zql+brhZ9FwIfG+gfi7ioKL2L4
	 4J4XCe/La775qUvN5ZzlKijE4jzTcY1Eazq7J4dtkZ5OzINOaY4LgmxiqRrl+ebO8E
	 CCwgqTZEbIuazEvfQWcWyOhkUCBpTMXIiTYmFEW4KiSmLNzDhQAYAqYTy8j7bhzbs/
	 0ddxWJ9IkrPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DF4C3DA64
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172139195364.25474.17809019773540915485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba1cf2afedfb06353a59c169ef381af96e8f04abbdc6926ba52839626dad6b4a
Date: Fri, 19 Jul 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721391953
