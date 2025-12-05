Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43663308F36
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764933774; cv=none; b=cwFwnWqHaiik6ZLO9AeDQGQQdPwsww/aXxRwZ4WAXxbX8E9bSDOEuVjxaNGT/h8Z5IEcNHS/VHIyQ/mzTCRcE6cd06eAvTAbtHiygk6jEIh3Z5l7h0w+Qpu3TSxLQoXxd4i1o1F4dYtIzNT05jGS0lFuhbc7Rv/nGgovhn5Y1s8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764933774; c=relaxed/simple;
	bh=/1eCLdalIH9gU39ZrLZq2mydQ1WRwtpJeNEjt07qLf8=;
	h=To:Subject:From:Message-Id:Date; b=jL9C01QYGqODBVwrLsyQbh1zWOUQuY0QcR6k9xmONHfyqRjYdDnE1y1DYW4N0z3BEmN6hr/HLdPZNcv2Beps3eMpTL9PRlVOl6kTzrEdce6PXU6URGdjM9mg6ZXF/sJ1uzBd5Rt16FRCWu/sdg+l48mdeGshDqyGi8FA/GCEF6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtzBh6TS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtzBh6TS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80F6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764933773;
	bh=/1eCLdalIH9gU39ZrLZq2mydQ1WRwtpJeNEjt07qLf8=;
	h=To:Subject:From:Date:From;
	b=gtzBh6TSj9cuumpqH9A10+FGAo5CHx4bIrnvZVjFdtBL+2IIUxEo8r/2QjvXuy3FH
	 P/IGofk3a0t56Qqw7BWLr4nzEVry+8IfWMQMuJbUg+KeI8PFGUNjRfGUIHuKWBcVLz
	 BnPtgU7pbFkvP4IFo4fWloQia2JedwT7Mu4jCzpynruLKO964kVev6F+Z+LX1tB1/e
	 WA7X2dRPzWQWQm1Md1sm0JsQ+cDQh6+HMzGNwBAmJuXDCz/xwXZdVFDI91rCI/p6vY
	 Z5Iz0ukA6KSN2wp80cZ/DWPad+5HPCQh/IxLbt4wZyMtQ8eza9cMpYnCcxFb7aAF2W
	 ZpLmw6TlCvL8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B43D2F7DD
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493377362.19777.7039119238777107045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6c8134c58a0ec6a893e736b7dd7712ff176b16065b4f0cee48430d91d36141
Date: Fri, 05 Dec 2025 11:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764933773
