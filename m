Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8AB77E
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 824F3C433F0
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671569487;
	bh=5OToNi3E3NyQkyocdFBA9Qf/CuKVZeW623EGS5LfaZo=;
	h=To:Subject:From:Date:From;
	b=bdZujFP/pm6HM8bhyU5tYNOq2F+eZ++iTZZqboOnkCw8nt3VvHYeOKh1NYzgp+YV4
	 JAGj/+i5lvOmmLbJpi0+3e7zYDxBJQ3h66UMuBXHE0f9vBZhSgAgeMWwZDbYrDPf1/
	 zPxGk4t3SdRp3nzC1EHsiK4Gl8LTS2NaVy1ZIkwiBUceQQ195JZFau1e6qffHrrBxH
	 kzJogEDF16YznMKqsLsukcczT/9kl4s5Rh8ejWp6iD7dwM5eRZYS74lZxmzyKCJCei
	 AdUe92+Eu0rNnTXhA/GZdtqUAFFRYhQemzaQ2DWfZWW+5qupVzjwtsD7Lw9HREDYft
	 QbJsEtF1Mipsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BD6C4332F
	for <ddprobe@lists.linux.dev>; Tue, 20 Dec 2022 20:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167156948739.23004.10042152740919374545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5a4764d44e030f9ecfbe97941a7362558f2a97d56157eac11a12d318af734ad
Date: Tue, 20 Dec 2022 20:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671569487
