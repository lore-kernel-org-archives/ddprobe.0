Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569C510E6
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 04:39:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1E00C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 04:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681792746;
	bh=w9EbOGiDx7xKqmjlWR4EJbYwWhCj6MHtY3BtzPYhjjA=;
	h=To:Subject:From:Date:From;
	b=urYa1mf5AQVnqrVstd3PZPvb3Ujj18iXyXCHm3nqHUf4Oil2zH14YPyXLsAm9582M
	 /ym6/btnH+Xx9PK7faSGw081V1/BgTwB5EQYFwToQV/Mmk6zCqzEn5UMv+iPSOuXw7
	 eEPe4MPFjxvAzppUafDi2IFd2R/nkkU/flUPKIj5J08pBQSKGZuzsnT36GCJnE00C/
	 P4uKpbrmCEl4j4o9k2kXlmXakSjEBDEnueELCPpdolJwwxG2z665rES6YOB5r5/sxg
	 XUpIDObfpX9CbddPmkW+OZ453euPbZW6X8cwhy3S+BuUsLOT0lCyfO7zCSkpkLkwzK
	 1pnwvh0Gho0ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C59C77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 04:39:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168179274586.12065.877139102029297220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c80ac11cfc1249190c36da398c40e4313afd626ef0d53012efa3a2473c3f99
Date: Tue, 18 Apr 2023 04:39:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681792745
