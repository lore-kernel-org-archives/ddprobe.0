Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59DF8F44
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97C3CC433EF
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673562087;
	bh=XxS8YBG7BR1ChAfUBQsTjmM8nvFdfk9waBL11ChcR44=;
	h=To:Subject:From:Date:From;
	b=PUaZNNBDbWfZLal+7btOyVjMGXGh1gx6gWq1b6tXS67vacCQABUkvGkpJVzyfe9hn
	 oE7UIiNCf5LRFTpufKpT79y3aW4w/6kFRXP44OM5SvJLUZnLi6FR0WojPVmHuTNkPw
	 3OfwbH5zHyZ2uND8dSCTUCFktGP/CkoPE551qHyvGED8ERX1T5uW6gbAAu7yy3iah9
	 YKjecw7C2zaDG8YvGgt9NZU7DjVeLviQw2q5DN4X1O/1nLiZjs4ZOyZDqLjSZCbT08
	 AiCVVWqlE9L0+iFd/Ua4Phg1qvPrw7ZmQpri6JJnlLJhKo2fdvYRDrsc9cWMwRe+qi
	 YF5tzYvkY/lPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77310C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 22:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167356208747.25456.16428084513433088834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bf5645b3371e5146040d468ed1c5f43de55a7a83fe1c1c7ae9e82b052adeec
Date: Thu, 12 Jan 2023 22:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673562087
