Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2CAB17CA
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CA10C433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665551453;
	bh=0ZJDWbQ8kjnLaNaM0/UZLF/9i3G/5ecW0OzvYGtDKts=;
	h=To:Subject:From:Date:From;
	b=ssJM4bwBce2Ca1fC/rYg9khfThp/tWE67Y74/x9DK3NVdsL0+zDyaldFdeeXxNfNS
	 gLlccTpZfO4aR7iDUyko4mVaN7kI14Tz0+p82pQTYbP2Qbj1ZsDAAyVkA5KMAb3eV7
	 k0yf/PaYZLZo8wK92mbA9n3DvMLXMqLuBQrZ3/hBqSMEeJh7i9mgNhnDNkgjvNudIc
	 l5LmWnurBSGG0yBAFSEHNtGhzQYdPgq63GUMIYkvWgOF3oul05NXNluqagNvgI2kt0
	 fMJjtHMPur/Z6cQjUwpxAWcSGQJgsUleRJNGikU3hz60AcCIuij8CQGBaRLWkFutFR
	 tszHD9Tb8Ko3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F9A6C4332F
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166555145334.8564.1659551968282922800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970bc12327d156203fb0fe5ce3680ffc52f7a7848593d7dfd0fbbeeaabc6b6c0
Date: Wed, 12 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665551453
