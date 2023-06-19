Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852C5D53B
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D18C433C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687204328;
	bh=0yzwVQ6qj55OIMFmJrWdyG225Z7ZRi/c49xtAxgeNBo=;
	h=To:Subject:From:Date:From;
	b=Q6hLUtCb0LAk3H0X0srEkvjvdz5im/PErxSL+tQc8CMDL3fsBuovwBw0mMWJ2YFl1
	 ZybcgOw/I6UpjBktSd1pfCJ1HRyFpVS7+uP326HEE6frxfdGtXzVP4+LQp5m1Tis7K
	 SEMZm0sUb8HfPdUw3Wg05dtwGOpZrV2dA0FKoDHghfJRj1MOS1CJgPbdkAQIfOyCtr
	 jfhSuX0XOLVYq0vccOd7TJOH8mt0zDW4ZNbaz4COvF+Bzrv+uEtQ4A/hU3fHJ/+RFW
	 K7dcR7Wo0c4ENqdL6ceTnAH+17UiYewr3GdoU1YkbE9qxcERJ91Pje540+fsR2vOqH
	 0OrsiGRqyStrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CD7EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 19:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168720432875.1688.13447169527948506690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aedc25c023b8cc195657645a9f71d4b7b9e8b23d120a6af1176a498ee9ba78a6
Date: Mon, 19 Jun 2023 19:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687204328
