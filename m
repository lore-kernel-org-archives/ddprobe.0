Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6C220EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6F2C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675000385;
	bh=HBTMX64zPscvLKp1vwsp66leakG6Xt0kz3zXV/BbIB4=;
	h=To:Subject:From:Date:From;
	b=MgF9Hhnh/UYMmYA6SXDCFeIMHWaRBF/cz11Af2fnVE+MsIAnKNPDuBw3x8J/1TAMS
	 A2gIdcbovl1HQ5qC2e6FXvJo1DKpa+EhgfeyfVrKv6eBjifyqmxTN/j/NREL/HeK8x
	 iFK28azfhsRupI4umKIfg7HtsQQS9A/58YtBNBfWfK1st6DRLwhXx/+JPGFPxyx/AI
	 DhLQ2ebahRw9JtgnHEhPkSDzSOeuZyi9HZUSP+yz6oz3JncA0LD2IbT8wGmvxGZ4Ge
	 YHXUhRGU7ms8pRsVApN/ZoCZ9QsO8anICbadQT8s53SUI24gqg9U4/YH3rmnv9hy4r
	 Fc4QMnhcbWbeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB38CC05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 13:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167500038574.29260.18359255114786346123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529793143fec90bf257697dc6d58f8836d1a8aa6e1900acd740d898ca2d2bc4a
Date: Sun, 29 Jan 2023 13:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675000385
