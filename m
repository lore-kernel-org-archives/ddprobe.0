Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617D6C2FF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E17C433C9
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687554188;
	bh=sOExnltcT4G7wRviRHNf2pf6zP1D5PekGjgCb3K+jcE=;
	h=To:Subject:From:Date:From;
	b=qhAWDBZt+9B1fBuiDoWUi9JMOrJ/j0aq8/uIWuLWdif1RiEwSJO+iCyA50/2PeCWd
	 6vI+SbvF0u8SrdGDfzXSlEEgvulz2LSAuCiAMhFxQvxfnqTvamxp1iB42iajp3QPpz
	 9I+ppcYudJIDZLyB63jRHx71KqUfbF+LUP372cAO780MbiOLiqlfSnuWB/ZO4ZQVg9
	 +uTocuu+AFigATgq2qIpOY+upJGBD4bcz7637r62IRw1sT+qtxAEWsrgNEdo4wKbRg
	 rGsg2FhnRU6uYI16n0ptJRx0MCUHX+SVJmZJsvacYEL37GCU8crh2ovdL1meMFzYA5
	 /1i8/bwd2eomQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A45F7EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755418866.24681.2107371011704797295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401352a6c28dd1f71d2e6fd06c378c1827cd92b53b0544092338d5d579900c6d
Date: Fri, 23 Jun 2023 21:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687554188
