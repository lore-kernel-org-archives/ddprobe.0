Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E034C80
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0QGg5zU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C60FC433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703626096;
	bh=NPoU6xIWwhPbNDZdghp5CjppWBUIADXmRsrEQQWDqYs=;
	h=To:Subject:From:Date:From;
	b=b0QGg5zUkVteTLY0brCwI+3+d72DuxLIZxlgHmS1knVbpZVAHctO5HwSkn+uBR0ul
	 Q6+1g8+Xwh/QDhn7UrqPiBbZywH7pkUL6Env9hT0oNDZYu8uvH90nlmNlnlPJp8K4v
	 T6q2vbfIjbnwofNHi6rBbdsld0qiT2tiVdrY+Cqhl7njxjaes23wXMReKBZe5VnSRX
	 nv/DXd0hipZFSzZi1gZtXIh8EG5Oh887ogrN+sjJ76IHW/ZnexUGtK7o7I8nWoTK/M
	 xWU85PSOrMwJERquMs8aPbsj3lg05CGQSj+Net5YtRwvwWfN/TrQedulLfXAMMbrSB
	 UXoX47ja9QkKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77F10C4706F
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170362609644.18362.1587971228567965752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d782058bad9bf357b4590d2c8d1951217c0640ebcbdd263d5216d1cd2d53792a
Date: Tue, 26 Dec 2023 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703626096
