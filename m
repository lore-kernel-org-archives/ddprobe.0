Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF5DF7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 07:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F2D6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 07:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662969053;
	bh=m5gbHXTWM8T9KKmcMFc8bYmKPQYAeFQtHJ4VYx6dV4M=;
	h=To:Subject:From:Date:From;
	b=dIxtW84sZ1///i+c+OlDyIfloxe+av4NnKIvQj/xFSjpODfALIahhGrdDQvZd7nvR
	 andUHGqduRKsROuyReJ7owPtBCh7HjCB7UqC2aus+/+Yf27Yo5OlCjR4d5rwXKxBge
	 IEbl0xT70uS4VgkbIE91EJm13gJnaTnqZP1e9Tie6oxNoUrBTr8GztjJAUul87WfUx
	 BUX/TvOj1i6RDOT30jzzxGmZ8RyKHQ4UfLj+nSEVplxbMOZknfBb718DrwABvcGatA
	 qcSfVXJHZ5PWpo/MRynac8IWGYyfayn5Dn7b1xye8cP0ayFvurWG8E78CRhXqLpasR
	 ZczXX8wlsDMtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56B5CECAAD5
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 07:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166296905332.30399.4018398812318412451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a4a70a8f68ca81b773fc3051388e69dcd43334252b47fcf7995a9b2aa5466a
Date: Mon, 12 Sep 2022 07:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662969053
