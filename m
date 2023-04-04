Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9B67C
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE5DEC433EF
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680610626;
	bh=oJ36G3trLRi/e1D2S+T2id+6WgsjfWtdHdOPsWWBNMU=;
	h=To:Subject:From:Date:From;
	b=f3nZpSU2Cnky5w3GudCPedN/8ArW+0TxlXZsvGGqkye3kuXoqXC3sVieN+rfpA6KM
	 iLB5Vr8juemeXoG31Jx7LQvu5cSsqa+plwaCFVnsp9WCkmtUlC8ksgmIqU+slMacX2
	 Sb+NCYqSx1TgcFSGShKF1pMMLS1cGLjdb2/ieOR1OPLqNmRKCxJyX/H3N2/hPxegWY
	 11MHZ23SAf4dtdA2zmshMUv0/SrwCAImtEo2vY3tzozysEF67zR7a96qYEYO2WC3MZ
	 iJsXfQuDDKmlDjpq3bjufaOFeCdP9gdqOKDdKUgwh6Ab82Tbd3xh3jSOzCsurzVSql
	 NzzQcHtF5DW9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0AADC761A6
	for <ddprobe@lists.linux.dev>; Tue,  4 Apr 2023 12:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168061062584.21162.9292032552151649622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 169f039d9b58d0ae81c4994a13f541e546d0b61f9011840ee2bbef59f838cacd
Date: Tue, 04 Apr 2023 12:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680610625
