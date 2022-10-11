Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55EA6120
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF45C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665530453;
	bh=qRud+EbCzpd/hPkVDGQv9LoUtVFoigZbSgalxLrgmww=;
	h=To:Subject:From:Date:From;
	b=mlbIhNKeZ7bAmF6KlXOVtohPPcKEvyJaGuGZLZiwye1y+wbA9Qw5xURiFce/l478W
	 8tigKENwX0ylwPaXi1/Ymbf+GrHcOy0P00wLJzHQbRucSqDc8TO8vZU9/Qn7KCrIJn
	 55UgzHchJDbnGE5DgZutEH3+JGs0DVOwlBqoQslNDW2JYwQpDNLm+cAIa4LpTciUFm
	 MhPxHb7UXV0HTu6AqfU6nerXrY6PGQOt8LWwTtpsZn3gZ0h3kB2WvvFzrVatI8NCPT
	 U65Av36+Iu7NbKcOy3qtRRAXtKbNpWJZ9N6Z2Xd1lxxZbv1IAOOzNeb31Rm4+BEmVw
	 9YAd1uRqGDniA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E21C4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553045332.23827.12639512697683739074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1c5c352e4e0db0ec3b1aeb3f9a91b1945b1578ce7edb1691495b458e49ff9a0
Date: Tue, 11 Oct 2022 23:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665530453
