Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8398D7484
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 16:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC3DFC433C8
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 16:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694362448;
	bh=/obzaPZTcmu/kXzPy+JopfDzyy/RN8OfNroL6hgU3oU=;
	h=To:Subject:From:Date:From;
	b=VveH6JTFL30YriR885Vs5by50DmWGlD4oLeuxFlFxATNEPa9/d6mfd3fCeDTQ8agV
	 3R1mWdRBPB77jFXbtMZovf6m0YKHdk4ujnA5ciZppAEGHAfjXahsmI4d6YNfS0BpJr
	 D1jbPa0NV40KqG3bYzmdIH81a+My1byuknMnMvXD/hT+c+xAy7xDJun67oLIEavE9i
	 vm9ZjG2vyL/wRHM72GidOuIFHZQp8RYZUlq5aQxtph7BLnIGAJ3LiR0Cx15X5q6e+t
	 8L+X2zhq6M+CrdQ3gtsZlNZe8cW27BmU8vuygUjdWx3zJ5Cqm0BgFBcc+w46ynoYpo
	 Xg7SOxMqSaBNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB42EE49A4
	for <ddprobe@lists.linux.dev>; Sun, 10 Sep 2023 16:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169436244873.14754.12360099032649824436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 205679144d2c63cc4fe5cd9294dd3b55db2a645b8c90f231c648d76d8616aa7b
Date: Sun, 10 Sep 2023 16:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694362448
