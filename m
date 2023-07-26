Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A44111A3
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 15:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA125C433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 15:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690386728;
	bh=gEM8o7TdwzsMbSgMfq0Y4tIS+HJoQ8NE5E6hhIKwM5o=;
	h=To:Subject:From:Date:From;
	b=QFAi24OvHWuW6EH3g1Q2iWaScivDoL8XIZQxzb4sBOqKJdXRfOKgttDprY7OHjgtC
	 l0rR+F80MwpTtswhV/kMmrZlY19aXU9hS1CM1QMckyZJhd/GwuebNyWVgyeFEYcpuI
	 WWxnB0JJk+dYHtbd4EI91dTmYToskZ1qIcM163qrNy/m6uyDBpUfF8yPFtX3E+mV/a
	 6fUdztr70uzI2jQRcthkRDX8D5cHle70wy3+PXWi1BwofoVt1B7UNf9w+nByDsqCxg
	 XYEiryJDNdPx6A78HIUoOcoKsRztdkQcu3YPQblCpkFkDTr4XgMnYW1Pi+RDEcqBjP
	 NLdrlvd0wP2Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6DBBC001B0
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 15:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169038672867.9749.10248543122952622384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6921bee3424ad75d1a974f67916588cd1e313b4507389f59e2aa4981cac2a43a
Date: Wed, 26 Jul 2023 15:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690386728
