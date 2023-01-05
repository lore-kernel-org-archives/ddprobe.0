Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44AAA38
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89658C433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672910487;
	bh=XkMw2nko6jjqk5L08C6pz8ehJysS0jBZOu/IK0sdEHU=;
	h=To:Subject:From:Date:From;
	b=HfzIdlJs2kdsfVIGK8QVzgRr7y28gD1QVz6EPXOYH5rvA3/8cxN2PIk6nHDas6vSa
	 pXlCB4yTRmKBtjrb3ucZ7ci/2+WIeA0gZK/+qQkPNtGLU62RzsqVueTOVTqJE3sXkf
	 wqjaqB5s+Fw2c9uOVTtgIh1P82B5ebmlkADFfQcUw8VK+tZHQosxfPydUKJqCTTBIP
	 kOzs/tEje7pGHBWo5JH+6sLosierV6Z2jqo/t5mmue37/N+AbHdli9FyfC+CTB0bqK
	 /Xm2Ye7ApZjjOLKNM+yWl42I8/oCyb6HSNMfd5XNoSpJI0cghqhKQoTOD5wBfRPvrI
	 s4WlVU1/yM/YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72B88C3DA7A
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291048744.5575.4135183934359998319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66739660a0eb677daee1e5e36df8fe6ff5fe42d895d60f88658a4edffe72a34b
Date: Thu, 05 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672910487
