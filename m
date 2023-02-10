Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54215259D
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3396C433EF
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676025846;
	bh=rWyK8zSa1MOh7uZAH89sEK5MwxawiExLEG8Cd9SA++I=;
	h=To:Subject:From:Date:From;
	b=k8aWkKL13znLrszhUAiU0zc12EMaKlW8sW9Kmoy3rC08wMvxEaeRVJC8p4Rs9veMb
	 B9N/JGS+o8+q38ssgvqsPjtWQHljGDtct+oTw2ZalaRHsqHwcDMLJXtMDfXNa/3WE/
	 8r72NgVdaASqQWWAERJmjEF25atcnMbEHtTWnkB9TMW/MxMEiQG24iDfk2yMr5YiMa
	 nFPoF+kFQq9tPNSu2VK5i/DvPVa74xIj9f7p7sd2ss/reGq+P+/lZDxFPdM2ugJOs1
	 Oh3m4LYAoWbh2qpFmB/F4eNgrPUBk7kNqiSqOye2ybFJlTIF+DvzzIG50Jl33HU7ve
	 jSqoBqwgO6HQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E01C05027
	for <ddprobe@lists.linux.dev>; Fri, 10 Feb 2023 10:44:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167602584587.3613.11227234313712741608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d42bb6ea251a98d567d6fbd26131dcada7b29c7a2b628c51ca40bfe7fdf5feaf
Date: Fri, 10 Feb 2023 10:44:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676025845
