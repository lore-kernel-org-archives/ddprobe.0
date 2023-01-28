Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37A1479D6
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1B6C43442
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674941585;
	bh=RJ/euHzdg+6qsAaBmXkSfGN/nz5Pb7l2DS33M8IvYQk=;
	h=To:Subject:From:Date:From;
	b=S3CfwIymjgl6hI/McE0LFaK+5TZUNqD4zwRsdfiil4JECEumSDVksEK1Fk2wiv5mt
	 0t/vWDISvWMt1y52zvrUS80FQ22EMXw9sgLwzKZXcEvj6QZmB+FZgg/v5fij+RoLkt
	 D6nY4yv8eNHJzy/29ycYy0DNadD3DElQYNjLukP8qtBGoQ/J1NetNExcuGXPi8107D
	 g18eIdpb3qmZxMq1H9wM5iQq8WDZ5sHQcgPEfQliSi+/uJYDAp6ynLk+Kn+32qGpoL
	 rrhaPQWauM88Ts4Fi15mDcY/Is1TN4jSJrVZCvCIZupLHqDKaTtSRIZy0TslSEdTTd
	 XVggkgy8COchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA93C636CB
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494158576.16652.8771937908159349810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0baba5d479f73031706e7abf2145db35c999fb0f581ecd9798894f702094514e
Date: Sat, 28 Jan 2023 21:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674941585
