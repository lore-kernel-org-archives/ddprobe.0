Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82F2D185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 06:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE05C433C7
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 06:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692857648;
	bh=53SPmyO8XIRZflbconIMeVa+PzNB8QgMC8XEX4lwq+k=;
	h=To:Subject:From:Date:From;
	b=AKcxsM9yLTmIL0sxyGPTSDMr5ox9J3+f7TK0mAoO5d4tZy5Pacn0EbExec2xmEy9a
	 rYqifIqZSEl0lsrDwXaPoSE66cAX9EAKzb9aJhEBQxlDuqFfK16HuDh5TL5qXkovmg
	 xB+ze+PvgFXryXgbcy/2e4NsoCw3vJuh9Qtxp+f1WnMIQ3GqeLjffN+BqMXzhaZxeg
	 tErCZv4jKLORy//AfQwie/iXU2VYZxXqDTWywyGwKVPmFaWe3q/UlHqc4hiHkukO5a
	 kRL9G7x/K3qmeu+gdnneiiEVzlrRVIcF94ybSbMoLSkTmhcHmRvvqWlhpNKpc6s+R8
	 Rg3vdqyWelUkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C35F8C27C40
	for <ddprobe@lists.linux.dev>; Thu, 24 Aug 2023 06:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169285764876.26072.11075615268194392200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e1cb213e0c415e623287bf5a06ce5e07d746b8939e130bae5f15ae4279f20b8
Date: Thu, 24 Aug 2023 06:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692857648
