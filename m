Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98BFE370
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661071853;
	h=To:Subject:From:Message-Id:Date;
	bh=nddRUKnZX1hZZNNEfgNYx6jQPvXpCLlCxoYEeWFs8v4=;
	b=Kob/t9Y0saS2DlBoInh00K3j3cSLL77UVRJ4VAHTcwRAa8qqeYIcCD5LzCmxshY/
	bGgCC9uiMlPTlPvjcVL0ps3zd9igTIU2GPnkyjgw6vM/Sy3jZKt4DfF/WNClyxvU5Yd
	Ui4xHI4+CTA1zF5G0d6D7YPMnYA0bsUZ6YpX3JpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661071853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nddRUKnZX1hZZNNEfgNYx6jQPvXpCLlCxoYEeWFs8v4=;
	b=CwX05y4HKk3iVglc0idCN8NRRgsOwfYWehgt86gINO+A7bWSz9WPmxp8IZKf1U2n
	funjVVvEFdfvEn13xvqPDq9610CoDD35eQaavSX1qFh4nNY9qbGdqcCxGtleVUoGek1
	oYaPiHhmXSPcAMCjRiLUniIwxx3aw2tRJwEI1Epw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bf990443-130b2539-c287-423e-b7f0-bfeb520dc92b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd188cc78c0b2e1ea3d6ae69bddc86bb06dde5f9586c7df6ca082427e439be08
Date: Sun, 21 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661071852
