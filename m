Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD8D7E
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 05:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC6B9C433D2
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 05:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685337125;
	bh=SXda0/auys55i8b3NtYeIiGKj+o67iapbaNhmUJ22cM=;
	h=To:Subject:From:Date:From;
	b=G8rah3APs+EUGuNuVEVeeplPhTXvxPcCludNWCVDmwyCa3TVkIPdjYGdsNuhsC8Ck
	 fVzNc+RixzOUgEvKi5xAcRYvhhh/okrl3uRzVeHqJm0Bu7Th4rv9HVvjBbAchlzEDG
	 rEE+G1RpOIHmfNG4gOHWZrDL/Xr9uRUTWejUKKpoSPzeUwVEcwkeT2h0PGQ+d/aomG
	 rbn8uxXtgZmkEPRtEDvZXCkmzshhU25kkzRa8/x7qV2nxo/uzCCQoLlxumHqcoYgq7
	 JRAexNniNFZy2OwOyTmnV/CghEzbDVtz2Xsypc5PEOeCvZj6bJXYChnXYf/ziD4uxa
	 1omgGV9nkQEHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0B6C7EE23
	for <ddprobe@lists.linux.dev>; Mon, 29 May 2023 05:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168533712577.3994.445919106514762248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a047507c8e3470e49ddb659e5eba34b642db918877743d8d7aa7a98a6dda2f02
Date: Mon, 29 May 2023 05:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685337125
