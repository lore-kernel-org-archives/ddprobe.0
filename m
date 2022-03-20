Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5242433D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647783984;
	h=To:Subject:From:Message-Id:Date;
	bh=2MSjwHnmil/hfdzGRVQ0vd3sJeG0k9GM8MkdDhfXJgU=;
	b=D/HxmPMz0z8K74UOesAqIiNGExHWJiR9B/HKcaICdE0n8yW6pFDOSRptEpNXdRHp
	eLRNqSYsWotK1BauoE+XUiQ2voUpd0EgsY8f8Jj+xFjRlfn/mWsG5XADYj26Q83zDHS
	5sYge17tSjfZmndQIDb0ojMzRm4SbCz4qyxolhBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647783984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2MSjwHnmil/hfdzGRVQ0vd3sJeG0k9GM8MkdDhfXJgU=;
	b=AtiVJ+mvqA16/7IAAw59FckzsK4/JtZ3eIQxOW+4Ao/vkMCc5MhDlPB4UjtnEWyA
	VVi24+hMM4vrhq2tjedJIg5Gq0hvQyR0fn15hW0cWf26t23rCzHUGiexo9/LHzwjRnI
	1Ihtrj1KPj+JhmKkdHAOsT288wB9t5rvYIK6fSqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7943e78-cd82b52f-6e5c-4b1e-80eb-849460503843-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d64ee0d0d0a7f10509fe8d574f0d3ff1afdbea14f2aad0de7ecc166c0a1db0
Date: Sun, 20 Mar 2022 13:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647783984
