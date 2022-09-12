Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C347F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F54EC433C1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662972053;
	bh=FuA7OGM+h1W/SdyoH8khu41w06/6SNmIBujZXx29QqA=;
	h=To:Subject:From:Date:From;
	b=oi2tsRgwFeKu+0xX7Po+1yRrwB4xspZsx4uh34xaD6Xp4XcsB04pRbTaBEQfA94Jd
	 SlXrMemHr8+n4Vt5HJXDiOYBaJTtHiPCWKil36EKUYjuZhqyI6KjZMb7D4/jboMzGS
	 f9rzdb3xnH9eEHzqHltE/tdp7uGM1aqwvP1MwdkJ1WrjQWHSvefO8RwwsufcsE492R
	 x3G+wq6oQlALpuuMDLygxn3JIWuIXWBoh7SdQOUFwjX1PttJZ0IyyMbnrS/beZcqvH
	 lwn5qvPtFB0zdKejGHLUK3TwEAejAHX/JIjVtQfNaAkAD8z6m4Sr2dmtZiZHp3LjK6
	 GoMd8NRSqdM5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CCBECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 08:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166297205332.2152.11424600427644398607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b137a1e45704e361f1e3e1c8a2e541b3fa2501826becb299d2aefc79bbff284
Date: Mon, 12 Sep 2022 08:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662972053
