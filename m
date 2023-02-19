Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335EC210F
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 14:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E83BDC4339B
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 14:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676817485;
	bh=LJGnSZHwA5VfQtbomT/P8lONeG1cn2HjdJCJ+hjYkaA=;
	h=To:Subject:From:Date:From;
	b=KqByf7DSN76quif0BmuWXvDvc3a2h07Ar01RBkEklWkilMDgPyqnjHIOPXNuot5DF
	 WT8n3FKaLSLB9R/EOuhkUybfb2yPuCh+Xo/zyjx4s78bd5rMD3Ox5r3HFnJE4U2YZh
	 7VneTyuLjDkjwVXnks6eNHjmRmx4yv7DFePVPrCwdkm/ChMEGyzGFSKpq5WEaoULLk
	 dNhH9aAiTIudtmoADaJRKHovPkfk7pcbaGuBWT8YeiUK4zd9U/dVJJ2aG3V45XhLfa
	 SewgeI6CZd/dcyzbjG/uxsgCUaVHQpWxdiFo+9k8BfoWtUd+ylW7d+uRsBv5+CNjEg
	 sJ5PXzF7tPyoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9E3BC61DA4
	for <ddprobe@lists.linux.dev>; Sun, 19 Feb 2023 14:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167681748579.22743.11112676632305791818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a782b389c9e7d23f932bb67d2c85afdcff915fb17f6acc7ae4e8470a4683c2e
Date: Sun, 19 Feb 2023 14:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676817485
