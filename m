Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23BD1FCC
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DFAFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661482252;
	bh=0KUba110Lv+DYLz6ReGWMbqG989ZXHlDk2aTGcwqFxo=;
	h=To:Subject:From:Date:From;
	b=A6dKH9P1OYI6Ad1UBbP9rA4luMq5sxff18Ca3xyYeBcc3039x/2hxuz6JgdD2mf/p
	 d1yF+mguN4hHQlLJju0+iydx0/+FZ6RpjQwCPURv3TeRpQYD9tW63Vfyg5VHtJCZ+6
	 zicX8ROhfT+WCwGZ7l2+Hzk1RrEMRjlRZEs+uhIeeCKF4ctYfZnTQLTFD/b3vTaQYD
	 IDx86ICO03Y0HF3K7zGm2EXmYRgT/nVhz2kSy/FqX2ntY11216pEVQaj4PaiPXkqGW
	 d3UujKj6M0BTBP+qSXPhU4TxL5aGpwhONRXAkpNuZenKNC++BGrhVWs6FGTZMvNjno
	 +/td++ozP4Vzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D396ECAAA2
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 02:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166148225242.11213.5591674177512179066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4331cf0a93085dad86f9c550c96f8607c1d8ef1c559c583f82734371f50d771d
Date: Fri, 26 Aug 2022 02:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661482252
