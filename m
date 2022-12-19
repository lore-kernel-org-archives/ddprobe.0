Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D28B879D7
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79A56C433F0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671487287;
	bh=YyOIGZR7UhhOZ8lhT6GpDt4seQBjfc7d7Le5IaaPrV4=;
	h=To:Subject:From:Date:From;
	b=kZQ9sVoPyo/lp4RA9q/qd76Sstl9wc1cxg8dEAnBBie87uRb/tUN4z9G6/33FPAKa
	 Hi76swJvcgIOxcCNu8nZenvctDDppK0RX0mMvdIxR0Oqtnnw3M2zll3SmbJTgcip+K
	 cNf+GwxqzwM6dtBmWMvPH7WTHyv81F2pZlfqSptPHeTpkGK/ZVe2A/YRueIxjUagqZ
	 Q1CLaRbtCWbvUH7OeaBwSb+urs2O1zHfa3jpJfarQHhBGWBAtW6Eqb9+RhE2QG4Nld
	 d9frW+6zOr6kn3b2YVadPZEmSdBVmd9B44nUq/JGnLmwlGRXDDUWXL3zgBQEQYAudm
	 RPYKedeoQJcHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6164AC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148728737.6859.16738882161982659509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c00b87d71f367e23a999d1314d85517150208166884970ceec2fd88fc8aa9d
Date: Mon, 19 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671487287
