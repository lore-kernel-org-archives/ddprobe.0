Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804462907
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 15:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 28CCBC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 15:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676387106;
	bh=AChOAUzNoKdOwS58BIx/b7hQuXmpJjBDwr08IO328GM=;
	h=To:Subject:From:Date:From;
	b=CD4fV0YJI7kB2O1O36bOXIHzSrdS4QMELn7NyE/2PWZOTvFx/2kn5tQXgwHTjQR3k
	 823XziSSbWFZCjjKouYpulzU/g0u14oafAGFs6NPZBo1oKlNd1TCnePcM6KldoQR6I
	 FqBb29PCZHfyIl63UCB4074zfPRoe4clixWRktYatGyIX+ejfFtZtgG9DmJfTa4vwG
	 hiLRpR/Vu4ru9smZ4EE+bFzgd3iUMLhTGjqLMeEG7z6V3u7KzaURpHeAmYkh9/snzI
	 70e4ZgfGtn2LMxcb2TZl0R5od/qbFt8eRaX6iVI3TsXNwQBB4AkGvVSd8H0u6lMEGK
	 Jko2yu8iIQVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 03277C61DA4
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 15:05:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167638710592.6272.11271241391739374203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9882f6d4a014d76c4739878d9a684de5f25ff452048155debb2462a76849700
Date: Tue, 14 Feb 2023 15:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676387105
