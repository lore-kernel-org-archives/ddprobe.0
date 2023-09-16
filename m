Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D1B12B87
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 11:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D71F0C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 11:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694862308;
	bh=hkiVJIU/x+tbvqTuHW5lvS79KSuhRYvJkk5cRbhW+ZY=;
	h=To:Subject:From:Date:From;
	b=M0YHo3QsfV60yYU0sBbsr+ElTYzU9bHj5guisdBPF+hUesghsqBwyslaEhduWaj18
	 ktPaUMebLK/Cc7hB8ndV7sx8RONz6ZHqfoIqYpIb16asq+mXVDKwVwk71Cf+PDNvi3
	 KnFRYJk5yIEayRfOKsQKTEGF0uhtuk09Xh+SI+sf+RVOlOlFSxMU+ubuMf9EbVHZgy
	 U8xm2h+hnzZW98Ah5sUduAg47g8LlPHIY5/4MmerJdH3qfrt6OQdx8nHoLwvw5csCY
	 QTZcqa1zVJyeSN3x+vbEx7F96DJ9FsZuLGlBFwlo4wyAh2s27JSIqVNl9TnAQCpdgh
	 ThXhi1GPpD7DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B84E0CD37B7
	for <ddprobe@lists.linux.dev>; Sat, 16 Sep 2023 11:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169486230871.8833.16300440904780733830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c308f0bbcca6b9bce0ed0cbf7cb2efbf38265f5acea4498b3a8898ee89b8be14
Date: Sat, 16 Sep 2023 11:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694862308
