Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C499194
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 07:19:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA923C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 07:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685949546;
	bh=KzGlvzl4fzgGByXwPmW/vP5SP83HG8C0PjuuEkZhNlU=;
	h=To:Subject:From:Date:From;
	b=raBIve4l4vmCHODkTQPrlgwN7l9ifKslazykd5PbN3Z58Q1UfKoS40iwuGaPnB0Zn
	 +MX/3uV0bG+grbLtvI4mVCZxLIhdaxugK4jger5XI1ReXiweDs7+PgoljPTMNWIgR6
	 bX92SstsCk1rGF5BeHlo+x4OzFnSkXqTLmGtimYnYj495oKRyruLtbylIDBLtKSJqZ
	 lkIRBHVgu8IpAJBjxQZi6U3ZytKt5dw2JYUCARrB2iSs5VDOq1hSRHfFxgd1yJ4gh7
	 u1Ax4894osT8bWOc3y1QLoKp4HwjzWfLwLwG275TJS8K5CT8BqnOfCJUvoxraUJX6p
	 Iu39frwpJba0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C556CC77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 07:19:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168594954579.2046.2067391866431108856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd9f765768c03bd6433b9d46ab2c7ab9c4cc55dd3437d721c89ae9cd57c00bf
Date: Mon, 05 Jun 2023 07:19:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685949545
