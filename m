Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70D1A5A
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ADEAC433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665073853;
	bh=hQIZcbdFD6WFi2M3UVlN8qPQhBHWvYnNwDeiHzvgZ60=;
	h=To:Subject:From:Date:From;
	b=aFMY0PobXfNpFwVHb0nMpUx6A/bu/RUgTrf2hCFIhLPRvxlDF2RcgXvrOtEsBPJd6
	 8Pa+Cy97M4lx/IMwjcApkvZOMqQmv5kUV6d23buCpFHr5Cr1g6AWHgZZ0Rk9Z68Fmx
	 z9tA3eIPOwojFZSkKDgV5C3FnVAWIaieCdryigT7Ik1jzfastLkd+2TEgVU6It0PPM
	 c4OhlpLwBpPAI8S9q2qO3hVX1StFcpFYSt4ELdZb8O9p90aUDDP3MnKt+L71FQFHlX
	 5Hc1v7VCiyfBfj/Cvsugwdh4zNvv7IS2wjVNbM4DvLNJ5qwhXRrRq0Iu7flIVmg1Mi
	 o7edVnkIl06Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53024C433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166507385333.15759.6818040208479084465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfddded24bc369201e303126a72fe3152caf8a7e2738807f444be15036e34250
Date: Thu, 06 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665073853
