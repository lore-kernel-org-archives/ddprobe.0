Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6551FD5
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA1A5C433D2
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683382685;
	bh=G7dkk8Oj3f2Xlis6FmPkzVVaRyeeqkes3ZigqUAXzjU=;
	h=To:Subject:From:Date:From;
	b=QAncMuf0fOR+bTjZPD02euxGTPUyeEgOXgcT0hpbirqkdYxiZ6W3zKmVOQDWhmBaw
	 Jg8ZAw/Fw4BBOMj8/ew2ToIj5UI07VJQPfw0VoPP258XRlJgskfcS0E/1Jld1Oxgtv
	 jc9/eRGIszTROuXy669o/UxlZdVerFaYK0T7pd2MNUsj6xAdqxyzUntiATLzbjancI
	 s44KCNXtn7NuG36JYNb47WB7S3TR/fqX1icsCFH7LdA9BRXM+bZ8I4LRdtiIMRo9Sg
	 TwRynRUkGf80lqo5hR2v3+fjeSq3BXYkxkLlZKple7wvxjkZc34MiIknlfYxgI6TDa
	 dK1GkMQUPVYqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDDE8C77B7F
	for <ddprobe@lists.linux.dev>; Sat,  6 May 2023 14:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168338268582.20160.4241295456944962211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc9db6f8155210ab7325c4cc899d82ccfb6c47c5d06d9033df07630170167af5
Date: Sat, 06 May 2023 14:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683382685
