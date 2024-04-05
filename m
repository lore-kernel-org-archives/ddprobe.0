Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E639616FF5E
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712332697; cv=none; b=IjaS4vnQm6jgITe9iQaeTAURxAki692dFFgdRmpr/vv1VZML3YMLS+8LUp51qZ5XsegBa1cZQXkd9OhlljS/7d/OBEgvT3x3rS6LpvRnIK+kCzGyzn40HJIrbWmxOYPHn7aL4u1oiQ70RPa7RITQLD+Od8hvQQ4Qfr8Y0g+3YwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712332697; c=relaxed/simple;
	bh=6L7zhn78uDHc7Jo64+ucg0bpJlZO4X/GNsY3Q/We9Ng=;
	h=To:Subject:From:Message-Id:Date; b=JZTKmw0xmfC7hw2Dif9pe5OUmeEGchB8WNKayHePeWPi+xnolEHh7UiXCi92Wkcdol9eegsk1IcTW9WxLsuXIQWMRzvruayE5eP6dmOmBn/6MXbAPJbmGmyIw1X4GZrVdrCgU6LO2+lWkH1XWI8EpFOfVSsyxmjbyAm0pzeB5Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/Z6H4/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/Z6H4/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F179C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712332696;
	bh=6L7zhn78uDHc7Jo64+ucg0bpJlZO4X/GNsY3Q/We9Ng=;
	h=To:Subject:From:Date:From;
	b=b/Z6H4/8zRkuv1H0Z9xesBArFQPq4kM3QIiwdQO6km81s4p/PI8nwkUfMQC+mSLSs
	 pcXgOMq/9cpqJspMUWf8hs5fxrCVRTcEl/q9QnRY7Z79w7fJ+lJMvJXBNEjQGH4z+P
	 P424V1PU0nkQCKCqnWsrN68u1gLQeduC9m+kzovHk0g/hupWggOGcJxbm7DxOQ7WvH
	 X8unnP/4yceQy8UhZG0slN6mMtvwSo1E65N+hK4P0ko7VKW8WSPWxcZ18fC1Cuiyec
	 etoPNhrASD4B48gE7KG/Fdv1WulSZnAFSInp2bX/Et/i0fhVsP4TLOjEBpr8dszTx9
	 8YDU8omKUBX+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD34C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171233269638.31084.10750526593421605789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8cac7e7713f14b5b0de81f156f5139448e6d4f0060844fb5e31e643a39f7dc6
Date: Fri, 05 Apr 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712332696
