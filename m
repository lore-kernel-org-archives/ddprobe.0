Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224A019B
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 13:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1AC3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 13:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677332705;
	bh=Mc8V2nO3XXN9rcgC5qnI5onYgyTK0RhoOZdznZODZPY=;
	h=To:Subject:From:Date:From;
	b=J5XWRRECgBebS1avwqDKSRsmZ7fhaRPMriK7mGirJMlE9OZK/5mKhtBFg94LLPTAf
	 dTu/i18IexA1mrK8V81ma7ZumfIj1yMxPAx6mXILCOqOsNy2SJPqPct1LqVnoYsQx7
	 P41FbcqvzlZhx0Gpxw5bPuvDKMb0OxCg2A8VEc8rUANZRko3Y1lg0bWp2AsBePSDcM
	 xsbLtIt8kh8rM5ouCipHcYYmbLwKjpDB3G3NYwB9WZxeLz3uCKa15+2Wj0m65noA04
	 YIVYJSw+sySPNBWLRUEbDMC3WIcoVC32/DUcqMAa1YtmtqM7b/hE+A+pKK2nQDlQqo
	 Jl5eeGj7SREtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F7EC6FA8E
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 13:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167733270575.12385.3117251428739355308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0c5c1780ed167c15ebdf5734e1a055cfa39e8b473ef2c79dd8f416d48cc9796
Date: Sat, 25 Feb 2023 13:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677332705
