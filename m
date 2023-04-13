Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42CDA2C9C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 12:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAECFC433D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 12:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681388825;
	bh=6rU7dfGhb5tryD8YPaPWjlhslqVLQVa6dHEEFEkDzmQ=;
	h=To:Subject:From:Date:From;
	b=rUYzSnpmykLjAyf/6M0CFxnB8AVXvnuG68Rg6UUObsEhI2cgglEAzb4q2MqclXp3k
	 rN5uh++oS8JveaizMsDC3JVL6/XuPs3a833O6jXwfk2rkA47UvkeEQ/lIybVPmApUL
	 BEy/2aYfA/3nhG2JlrtqPNcyc+gB5E5FZeDpExsRlMV0pBKCdbpdAc+4fYpgHLTZZh
	 HlpH5JwIKNhtdJVcoSJvI2dGj8gBYZXMuJyYJTiAuxNu2y1nGZRr7Wk6ucOf/AYx1z
	 /HNpknJy1Wtu+oPyr+xE5ubbL27jTEN7NnZ7f7F3SKpSaslxtAlRWq5BJM1hhyLFqv
	 htYWjMvaCBJZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0D2C77B6E
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 12:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168138882576.25575.17983971936263297967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccac9224124ec102f83c3e578c60d3facf9547b66cf1156b5f8a7349871ae2e
Date: Thu, 13 Apr 2023 12:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681388825
