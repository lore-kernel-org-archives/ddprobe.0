Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D015363B7
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84CB6C433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670602887;
	bh=0c/Qu8ou8kdfka6sX/NsvPYKm+L1tmEKwuuyBvSKiQA=;
	h=To:Subject:From:Date:From;
	b=biqJ3p4AA/gRkWhP0LDh5D6CTssMfhttCCsQikmSk0/j2Pj/8xsD5lkj6ZiuTaGio
	 XCg40SjxN6PAM4I8gYzY/EGUBR8WI84xmUyIPoEtTNZxoG7VM8x1NQZZwMsu9GNO8g
	 7Nf+Vr3u25mOK6rVjSoLZq1Od+SxOQPF/1NcTmDkjAEO9zPg4Yg2A/wXPErekUBNwJ
	 GL2peVX4hZHSWmA/UPN5tOOWOtotQpuWZbpo5UYvmoxXGrUmBLj9tXZ+ty/YTk8w+K
	 S+QLyRP6wJ1aqKHOLqPT2YFthJvY1rZEBaHz3/m82PGP9RecgR3lgQ6cPyhEyVopDl
	 ypJIYu/SjRnhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644E9C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060288740.3774.10264156367507164649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ee77c522aaff0469b682be1366fd43c9a251c9cfb4419e2c2c7af89853cc493
Date: Fri, 09 Dec 2022 16:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670602887
