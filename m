Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E567B
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 66E81C433D7
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666437653;
	bh=7N0Zk2eBElKc9i9DR48eO2BtXGxqmiPD0O5G86NDuzQ=;
	h=To:Subject:From:Date:From;
	b=oiiytu76aJ73gsp58Ny7IuLjqes/JIT4bNK1AiJ7rsiylaz40J3W5kMl8daARyUVv
	 SAj+yvoke7Tq4FEeF55y/MRN9FVSuZ+Gihcdby7yNbcThwoaeoi+Cwle5MYice05pT
	 iTJCJQ7G1mMUc5xdj1Fe1QC7WncMaKaLtF3ODl5FutkWllbd6XJL8+QA22+kScVc5x
	 yxxJYIumcMiJq9Gge0VvubWQT41rext5fJy9xKqCNSYsVlELOh4SIlXt7T7pqsAkyk
	 fubHlY36HcUCbiwj9v+bTm5+fkhIc0dg1wo9mJHNUF1eqXLpoYSlpbmXJqPGn6WBuu
	 uKCBu/f6OQJKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F9F9C04A95
	for <ddprobe@lists.linux.dev>; Sat, 22 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166643765331.11053.14014868485476816049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6653dd777d30a2f50fa81a0733088d293972bc2a635e8b8c8bc9057fcfc2226e
Date: Sat, 22 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666437653
