Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2CC1B573
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 13:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83A61C433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668261054;
	bh=6wewGvYNptFxBNZv7wt2NhA0pUNSt/YzSAWGHnNWzvg=;
	h=To:Subject:From:Date:From;
	b=QEDkMU9fEnfLjOVLBpNtwpRYyRrB3FOTrTiJUSHZoenUsngfBnO32Mr6S3/rdFn7o
	 QtT3K4hYTBehey3bM/6C0a0feKKZIepX5SRdApWV6xx0ZzzQtBopaAMienH5JXkMw8
	 i5ml7/ICw0arvzLFX3OFxGE4v8s+INSixAqwWkBRfbAJQYAzgaqp7g6m3iHz4oHtZs
	 Ly+AO6NfJvLzpuv0buM+Els1c43bUfvl1VXH1KE/xd/0UgJaBrZVypS5cEVfN+d4Hk
	 gx6rI/mrfW0rP6Klkk3+lLT86ie5DXdONZi4NuWrySgaemMuZWjlZXiUSUtvv05Udl
	 wqr9rnwmXGVMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68118C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 13:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166826105438.5004.4490354875254360644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c850f1388122330f7a84982854307f486fb5db9d667b695d3accdacad8c50cdb
Date: Sat, 12 Nov 2022 13:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668261054
