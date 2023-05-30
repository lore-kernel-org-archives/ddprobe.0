Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306BD125CC
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC711C433EF
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685464985;
	bh=iXuKlIDpB1Z6XqYp0WRpW3kwoZeZ0LMD7/Rf9aqnjkM=;
	h=To:Subject:From:Date:From;
	b=TsZwq7b8Hmdb6YINzK+LRCrjmIfqxIqeoYWaZO5sAwy8f43iMTPBVuvUCsdoZy97s
	 2qUpX/zyWN4iVrSAPfRkBy8c9FpjBg9k5kSY8PVE7WgtI0I58EAeaLke+BU/dbf7Mg
	 UyPe2VXgYCnFESacLc+SXnVS4O1yvVULRrAlYIY3n/hzOGcAgYsykggpcbmkAmdxz0
	 G5J2TfsX5kqkH4+55TKW4reLaFgqz0wo2inUiiuw5I2R9IfkMH6wvy5TvI0NJMOfcb
	 MHU/fqcxZmKj6jaX8/ZWuoXVwX/xNdzk5pT8lj3497/2O+HfplCxYbe/tsyb99ed/j
	 HMwXuK5+SWO5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0990C77B73
	for <ddprobe@lists.linux.dev>; Tue, 30 May 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168546498577.16118.12017684450829064748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab15cbd2f14ba2fbdae4710843187310b25dc32424182e0c175d0f1a7e1f622b
Date: Tue, 30 May 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685464985
