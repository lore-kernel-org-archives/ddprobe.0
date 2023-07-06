Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F9CA47
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:37:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F7EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688621828;
	bh=EjbMYYR8/mHm9H9MIMBvkPYo/2pSTsp7HCCF7kmI2lk=;
	h=To:Subject:From:Date:From;
	b=kNW4zx7esL3CdqJs7YT2ngV9k+AhalhdYQ4Ho4su4siK9ONoMGflHszB4+oOV4xGD
	 BgGfm55jyetrxqK54R9WYdJeEWOU2/iMm/PKjPxLB0MWd05SR7ZNEPUmoldaDPh5Hz
	 uUZz616HB+HtsDJNrSXo0wwnReuqk5tmJ3+6MhibCtwqyKmNt0r+taMllYvpKDMlG/
	 V5Q13ycHFuD9pcx8eUnx0B2U9YlW+agg0Op42gvzVLQ4EOHqGWLFhxOwgTfRMZYQ5+
	 6YfRRUb/zQOOk+fDWKTVlOwJ73QF+c0cIZihbRRZz/thQ5VOfZlADkJtGLlYG1Lhk0
	 Rg491axW3dnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7471EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 05:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168862182867.2132.13609651117741634000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401a07e6f3a06ffe8526efd75adc515402861d738276e1524b418353fb567e49
Date: Thu, 06 Jul 2023 05:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688621828
