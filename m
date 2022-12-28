Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5B46FAE
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 21:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83049C433D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 21:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672263087;
	bh=6NjPGjhX9iwE/G7xrg7eUdOil8DNYCxQ6fx6k/ZgxAM=;
	h=To:Subject:From:Date:From;
	b=JONv60YlVK8I9dUaoGh+4TrJjGq5ML3/VZHDlwtySm6uDTE9LMgwYO1hULAk+FgNt
	 /nqxsjpaDku9uNRe+NeKl2D/061NrS7pYuGA3VN2XxKkDb0zq6h1wxWlp4cIWiKkKC
	 YoGIlr2gwjJFWRhh0zA+EzDqCg5Rv+AtRd91C7325Nxn6c6EAtSrAlAXCWnQKc52fd
	 UnjdYJCWOGQ5VWTQj7b1fY+7R3RduUlsuKU1kCXMWhQmJzbTDHGNOdsDixyeIzuuqT
	 zQVpixwYru1Q/yxMq6ycZApeYN4rrRAr53T301ueAqurIVG65EXBzBiVx/3yjjriSz
	 Li08rTRun0R6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62057C4332F
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 21:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167226308739.28250.633324407746385109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589bffd0cb2234758222b5a11660f77ab0a20480e93376bff3052e123afd73af
Date: Wed, 28 Dec 2022 21:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672263087
