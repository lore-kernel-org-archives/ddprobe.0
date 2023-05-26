Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4430F18B0F
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 13:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F055CC4339C
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 13:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685109306;
	bh=KMnqaGfi6XeSUx2g+t9ge3HBh4vPociRQ+t/3aNvL4g=;
	h=To:Subject:From:Date:From;
	b=o961ehkN1LK4HhTI/YzcAeqjRG06/D6OaHc9KS7gTuSFNs+Hd3q1klLUs9NTWbdke
	 wDVC3qSM5dBfKzDRUrH5ULkMnARYKztwZB1g+1WdlPpro3qZ4PtbufOiMj5Ms7Kl2V
	 wfWdRrBwqWYLXNuaKU85J5SxI5JnKBs4U/Zrj0iSn+ibKFkGghwzLln8x2vs47zgK6
	 p0behW76ZDne09FB76i6j5Qcd332Fkc/D57j5QHfWDD14bJrim9Ntris0UjvZi6Rhh
	 1YOZDNiCGWsKnMUaPq+2Rzl2fMwm45wLe7iv31wnmKY5GbZ2GqvP/pwn79KKpHvdc4
	 R5V2hc8GKRyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF9D1C77B7A
	for <ddprobe@lists.linux.dev>; Fri, 26 May 2023 13:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168510930584.14771.1330687910853123937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1fc9f9ab405e1e6d5329392fbd940786fbb8072d7fcb40b6223e06d3cfaff7
Date: Fri, 26 May 2023 13:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685109305
