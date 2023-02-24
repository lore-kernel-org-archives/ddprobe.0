Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45AA62902
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 09:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA65FC433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 09:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677230106;
	bh=qnRRImYEq/e+BOWpm7BykfuRV2HVCEbJSJbBlh5wmf4=;
	h=To:Subject:From:Date:From;
	b=r30f2acUqDn98/+Nb8A+/h248p6Xrq/0Mf402cMeABp7OhKUaZNaj9DSkHBWO0nhY
	 gSBC+JTplbSq21drF2y1FHWJWCyopu1pAvjZ6noJd2kzcxkRi4HCcTJVjaj/3W9dHm
	 YdES3SiOtJlVHGqaDR6Pk2qPFtdUfYtc7TS8rNbvdaa8HZbZ08fcffnZyRWUeEY8Fu
	 ckXATejbEG8Rp/BLPTdkF8CpGLl1P9B7RWAgL6pZ53ZoP72CvKrVf4BVTqv/QktCVd
	 5XrQmPo1hV/ySLhyTc8lE25VwzLrpZZIhE1zjfJ3ZVgQmdR2sfLxT383QPydtOV50y
	 LRnXiCwfPWj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F40C678DB
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 09:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167723010580.18897.3299110765365596446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 076567f73f04dee192c4f69d0302da4c9185df5a90ae19cfdaefb3c719a456ac
Date: Fri, 24 Feb 2023 09:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677230105
