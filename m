Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8471F8691
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785819634; cv=none; b=MYKai+pMTG9Q+yLCQh4rG5CqyCTdxj8e4BvzO4CsnT0U9C/wGcrXOyDtlD8ozDYIjUx09g65+hETFpdYQ1WCcc5MD71A3snUZMaqRBPE2FNRUBkfEvqSB5BS3t4idCiAu/+DkVyzKtoBohieBmz4ZzFcXhDgbR1cFzO1pgfwSD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785819634; c=relaxed/simple;
	bh=vDnBqNz6FQhXeqpK+WEbyOGcUSQp0Chm/BWBdfnBKYk=;
	h=To:Subject:From:Message-Id:Date; b=J8N9Qhqe3oUKDcR3yIPfZ+39YPPEUEpnzqQ3nBgIT1qp5ErSW98Hg820nAL+yTbUBz1tzDxkZwyi6+RFzm79Tx2Zu+eWY7p27b7i2Z8xbVtW8IwghDGtozkkz43boHi30o6LmjSFgeoazUO5V+umCNbarV6vP90pcVjRCthOBjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouwL3WPA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouwL3WPA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3719C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785819633;
	bh=vDnBqNz6FQhXeqpK+WEbyOGcUSQp0Chm/BWBdfnBKYk=;
	h=To:Subject:From:Date:From;
	b=ouwL3WPAvk4dz/bKmjzzcDOQTq8bEbqGPDYRxD9eo96BNhDHfFUIM0jnvJvnjI0kB
	 vdB0ucY89MYkKTGkpV5H1l5V5mWOyCU1qJcEUFaz+87N0eaOSQxZjWN57Sob5cU/2q
	 BUBwbVdiEcOdB3QtvwoAKN+bEOmAk/N67m3iS+7d6MPIZQ+UOhVp0riZHhe9nBwD+/
	 nkceivLv7vUHtP2zeSsJzkKOKGOwhC+mBgP0N0gOxCkGeK1eyQixDuomif92S6rwca
	 W6vx7UMT3xTkd2hlmcOOyHCszeuaZclutd61jXfClFv9nQ+FVOTlsZcMg+lTTgrAMb
	 vY5JTpCZSfhyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF44C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178581963369.18824.17117923081389174524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7256921ec16ed1876ab69316fe44421f0f25f427a8d00714dde92438861a89b3
Date: Tue, 04 Aug 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785819633
