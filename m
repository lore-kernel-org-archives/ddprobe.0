Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB98962A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF7FC433EF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673660487;
	bh=ynAUoE9M4Lp8IaqjwEEzOcGGZYexZWY7F1438ymeJgA=;
	h=To:Subject:From:Date:From;
	b=skcg7nE8KSeWIvYL9VOJ6PeSG1XMPiF6tvC5/kkvrx1JXzlWynot3cgXTxY8GUUq2
	 d8nRDqzR/xkz7i7GoXXE1YzSMf9MO1EHA8E6mNzz3ceiRpw5Y8dtu93HOL+zmG9UjB
	 Jl+tH9BrUTJDVc3jqbKkGT0uCmm527hbxe3pdZDxGFbQCaBzT3kfyyPYJJFF3w+8z0
	 +WANWP9VDzKSN2maqr9ppNesuiKZauge9VJ96AF+FUosXve2/5/vU9yRJ6s3yY+1dx
	 gC8wzZQTMJpzaOkEChMpniEwZsESJMvRUFqZ3oFSV2W6vLdyC5DHfwHWHfQ7N3/lys
	 92ZiUrfaDoUdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7004FC54EBE
	for <ddprobe@lists.linux.dev>; Sat, 14 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167366048744.31240.4280982598277512440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebb2f5ca881f00e619a5dc383596fc11c16b981d5694d22461b7b938f17ff24
Date: Sat, 14 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673660487
