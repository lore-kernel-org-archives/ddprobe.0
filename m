Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B2633CC
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 14:00:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC423C433EF
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 14:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678975205;
	bh=oMj91/1QNEUBviM+LjYR/BQGcYkEx/DTGFNwHn9YOPw=;
	h=To:Subject:From:Date:From;
	b=VrHAZ6ETOBJTeYZ9j2WmdkUpp8VOcjGzQ1c+V5hmnR051sprBx3M44vq/QIk6q/xn
	 fFC+Cc758jr00mbzlvfeg9WPvpT8WIXW2S05wrAskMNGZVPOqJEEf4A82o6hDSQ8Ml
	 XX0VR7RVXf28ynT3Ts2oUmCGcrPW+bHZn04useBRHrgqHs6i5JeP9ixwo9xaqFm5gY
	 qGpsSTYAKKB74Ch4+Bsgv+JsqMD0rSMDtXbtijQBIquDpdaMaUJDrM5FS3KL5hDO6Z
	 U2hmGabHd32CNnqCxv6BbKq1y7MvgJmF3PTv5KkADhzGRJUQcLw8a2zq9HFtUA3zcD
	 FAQu4alBJoyrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4C82C6FD19
	for <ddprobe@lists.linux.dev>; Thu, 16 Mar 2023 14:00:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167897520573.17367.16315401263341353141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5aac4a306b081ca76b7432f19e852b6bd9bfe3959bd22a0b23609903e10e806
Date: Thu, 16 Mar 2023 14:00:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678975205
