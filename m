Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283EA3D75
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnRPBRHA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89D79C433C7
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699837096;
	bh=6mxXrRrk9FmnT+GW+fFwkv7ZBKutbV+ZkKYKahkR8OU=;
	h=To:Subject:From:Date:From;
	b=mnRPBRHA05NA12Al7Ji8r931KmTw3iOu5tupuDUtOkKEaqqGON2KWv+XjZJfrjZNQ
	 XmVygpRuYySezScCU3rzSZmlySiz4TVBk07Cqd2JE4Jg3GFU+ejaablS+r8WzAX3rr
	 Eu9ngMR8LjpU6dafkRpS1FAEN8BUGUnbPcKht4a7RZSomQIpTeOXj0a+dDbuwoBMPj
	 vj3uqP3GPSbvJDGgQy3YIME+ItnYcHTP+fQ67FC9nAC1jjPZzjAaBNZSMftndgmIkq
	 7f0IoEa61MZ8GFUCTKDWhvw2Uxa1TT4Fmw7nKGRepsH/bfHRYUWda61I6lePnqp4Fn
	 SR15mGNX9Gj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66889C4167B
	for <ddprobe@lists.linux.dev>; Mon, 13 Nov 2023 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169983709640.2222.14822222727326322628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee8162500fda3ee67a70ded207120fc7e69f7cbd8be6f863e4c477bcab0b04a3
Date: Mon, 13 Nov 2023 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699837096
