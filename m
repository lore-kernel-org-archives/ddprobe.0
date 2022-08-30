Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF38036A
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66102C433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661827852;
	bh=2m0gohYpRbo5EOowowotd0+R+PBtvzWeZG+VxqGtIWk=;
	h=To:Subject:From:Date:From;
	b=IBxir1Yn2Eo36BqOXUOVL2IB5W7FAieaBou7ayzvH2VwkEAIiX8E504k8TagyyWvB
	 43mzsdD0j9L8roD6OMS1GC+2LuUYteMZNjCvzGxIBN/YxYzhmLtOSgXeMpmQP/Qn/2
	 /SeeCfZCMSK0hBUuLMuPNPhjcZRIucE4O6XIpIqBLo7xfiCMaTIxS8yTufrsfUERhr
	 tWkkHxFQ8BTyCwATbFIeWXOpEKC/4rt56MTZqoa87f3IyPqjnMx7jXDcddqjTXhkHZ
	 Kkh6L60N+XZLOsGSJXMZZ461uRoGbm3XjImiuI5FSe59vu9cEO25ZNYBE5wCqnWu97
	 qrMclAojysJfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F407ECAAD3
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 02:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166182785231.4793.16181303326722599492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e965b3de5702dec4ff0925db48907ace32e90feae0c751fbdfb9bc493a23e2f6
Date: Tue, 30 Aug 2022 02:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661827852
