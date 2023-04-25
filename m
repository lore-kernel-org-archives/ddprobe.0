Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4791B6ADC
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 16:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8A01C433D2
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 16:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682439365;
	bh=rFXAI4IrzWOKHW/V8rtfR070V9E5yShFJA6L7XqL/v0=;
	h=To:Subject:From:Date:From;
	b=kYimMKYV8IUuDandbmCEYWnH+xnEWGRtFL7obmMUL1Gbxi9OsnyoY7mClIURrDcKd
	 lSz3vdNdPPe8Q7bzsuhWhKBHum23TKwnGlfI6umElGxT/cj7aKnVemFboNTkSeLPZG
	 URJzQ/mTDcevHQ4wsFF9bfm0/cBI2H03S6tjIF1l0Pid6CF3o7kav0znzE+erJeS4N
	 aazPYRKMK07xDzCDMse428c6YhEtqliJ1xN2AZBIINENRgmZCFK9hARNJfia8RdHBj
	 JA0ZrHQSh5Rqh+HSIZicUDbGY3zz5Pb4DVTY9qi3cxViTDGls6RYfNlXLhcUJuxpNK
	 FtIATEK+b5faA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC81C6FD18
	for <ddprobe@lists.linux.dev>; Tue, 25 Apr 2023 16:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168243936582.7589.3272085401856316759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d69e2a3369cdfc1bcf8d59accd833b27671f9c7e51eb39e4009ccdedd52e35
Date: Tue, 25 Apr 2023 16:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682439365
