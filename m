Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8B433F7
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 18:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE9AC433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 18:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674931385;
	bh=LL55Q9OZkcDZ71MJ7aIsZ4t5QKWnXNpKBWUcHBDiRdQ=;
	h=To:Subject:From:Date:From;
	b=Zbl4W3Ooew45xQovmnl0kKMpHg2tSt+DvOYFFXfkf/dYqDE7OVDuUnxE0QW7+2N5P
	 v216+dOpUlyUd5jc5gB1hZq+e8Aw7CYwK8kVRqB6SO8hRz+6HEBGms3hr5k6Qp+q9y
	 3NnLMN92pc20fm9BeA5AD8bmumr8iSXswtPN+IsvVubgCH9B5ADOwPZUsYKbc/mjxQ
	 QeTwc7UUwqBnZOdo/rN8wan67gw1Gf7a5qYigTwQ9tm6K5AJNJdj2mapJjWvkilvLG
	 NTba9RlPTyLeh7xb440ZcI6GOBvMDWifQMdUDz9ZWV/5ay9VL49Sz0V7QU3bExkNoV
	 ktqDqjLW2WzxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09ADC38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 18:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167493138577.19183.5103697970135996860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6db987346df79cfb3e3cb5b97689700353be023d5ed011aff5c4446b93c0b4f2
Date: Sat, 28 Jan 2023 18:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674931385
