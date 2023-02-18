Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFFAA4A
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBEEEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676715305;
	bh=23NmYEGoka9Uh78lfdgSe3fo2BrRPbNbqtqkTiIX+A4=;
	h=To:Subject:From:Date:From;
	b=RrU7xCOo1Vk+ol3mE0fevi3RGGljHGEhOx4V/ql9R5G1Y3BUxsgcMsdUQvVz7A9hv
	 MCGmJU1Cfhs9UluakXQII6DzDNF5e2w7qO40AT5mhxjzqgngmCmgIdXL6gtDgmX9vX
	 ntokYzsMCQOYsyaTVPzSac72yhrAe66yNLYtu/qsCYH+GCmnhMUhN7JSK7g4YsOKF7
	 2ZPYv246ao19UmzClaRQXmgZS/4XowLexQMTMnor1TDiOS+hs/krEH0dLDijcKVfst
	 vA0CUVgjjx5IZIdKBex0VnOinQeQe+FtAv/cxJk3823hLQx6gMAUpKe0OWAMESmCKz
	 IVX0nQdrt2WEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC544C61DA4
	for <ddprobe@lists.linux.dev>; Sat, 18 Feb 2023 10:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167671530576.18331.12410842692271115022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6da6cea947ed9f65ecd7be965bf362cd3a676961d7813a3bfd9cab03a1f5dfac
Date: Sat, 18 Feb 2023 10:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676715305
