Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6AD07F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B1BEC433C1
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662912053;
	bh=JfTxaOaZBiBv5i4s26C4n/fzx2OWLXNKKSJRhmgJMIU=;
	h=To:Subject:From:Date:From;
	b=qXh5kr/N34rbjorGT+OJXBmGJkJu3/nkU4qVnHPrAAEknh62z4GOKUHWPAoFLyCvO
	 Po0VLNrVmCSvdJwl82PLGNYLnWW/o8E2/5cVKgXt5QWqE1SAwcug2iMClg1E4DT6ql
	 TolMescH7IOVQ0yVrk0EWU/hRW1S+PTuGzx/GMe2Vf68Ks7WU6LOddr54NlXbcIGy1
	 cQPhOIQh3EZpU2exVnnWuf3N0ErEf51Ype2/YZb94wtdMktQBkkSpurQ2JBjkA2MSp
	 QmQ7XDIsBRf1cYmI6iMiQoK1hvNOh/jKn04fDLb9ID3zIJPZANyHAmUsxP/es6pX7B
	 WHV0NLl+afsgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5105AC54EE9
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 16:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166291205331.19045.9976700311329751489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18adcd62f612bc65f5f1ab28884a8ed096dc1b3df3d5733aaf21d3e784ba0734
Date: Sun, 11 Sep 2022 16:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662912053
