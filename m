Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B558F43
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 16:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2D44C433EF
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 16:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675356366;
	bh=p3U9h1jRQybX9IJsr7wuDirWvny+aEE8ZurAUkjcTcc=;
	h=To:Subject:From:Date:From;
	b=rJMq2XztQXbtcmIGFqWkkPl64uOdf2TaX9NdwyCLw3eTJWFL0YQlvS80+ElA6SZnI
	 G3uBvWa5Gggf00637cC+2220dAsVb9F09k89BMdngM61rQOJVvzSkp/KmMlCnwU6zf
	 TnaNZLIP2510ydAWRva10AoluOL96kI2FaELLFFBaPpnejI2iF1clQxRqZEXCDchBx
	 TZaQcAyvQnqPVLLosb4Stc3PeWY5hy0uuMvteMUBQ+2HsOT3MfVQV+I89UDRDMqJ0q
	 fs/MZdvnOaEGCBjRvMpvwHmlLKJIKTSZIkkAQhvKpA8ktScotvIzisEeDs0z8uzNij
	 kZE2UvdMOQi8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D628FC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 16:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167535636586.30231.18393208404791352947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd698d71b121db6bc2f913542a72a495895d2df701dc49789506b20f899de6b4
Date: Thu, 02 Feb 2023 16:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675356365
