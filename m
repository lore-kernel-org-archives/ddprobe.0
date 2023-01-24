Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B8863BF
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD7D5C433D2
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674567785;
	bh=gGk/3UriyYxCA/hxymdSI2YprFPH3K0ESOrzYxQpBxY=;
	h=To:Subject:From:Date:From;
	b=ote8JQGVVkuR73LMy4aFhZjzU9YXs7J8w42xIlFlrzcaPlbGg9/XZRLQBpblrPkaP
	 wFnWXux5KyfiUgWF0a5yufaESf1asOBA4J2uAuHu3z6kH2qeRfGAHXF8sJdiUIhFqN
	 Z9IgUtlEt/3N0zfR///nrUwQ+RDaAgtpWCp4loZJKv8ZomzXBoyy9JNjTVKIkCyKbt
	 q88wFcsEV+dexGkyhSws3JJ6ZE7v741LQz1Yjzzc2C1sfjwVyDy1Uvtg1e07aNjedQ
	 C6cBGVty4+KwJ0fUgCtcRor7FKuO0iIedaqAQEjcznLrBZgMeQG+vyyGO+4dSjp7Kb
	 nxKZYNuwPSkkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C619BC25B4E
	for <ddprobe@lists.linux.dev>; Tue, 24 Jan 2023 13:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167456778580.3013.17637453832471874748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ef6a662eb2ad6c75383c145e292d9093fc2680f663325d8dfb50002ecd47ce4
Date: Tue, 24 Jan 2023 13:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674567785
