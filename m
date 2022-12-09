Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E86DA7E
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82374C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670627487;
	bh=RKiN2jtukIEkwVUqkgLVpUxuiAIH9UvIzmgsFkK7adg=;
	h=To:Subject:From:Date:From;
	b=vNu9HADigHv1VG5tvWysYI80oZg6OUKdD1iVpkRHpggEH5HiNpPqgOsn096sJCTyZ
	 Q1YS8HHMtpvaJuk/5Y+Co8SirwVWy4qk+Hzs/QHojrUZgR2xGrlMyF1nBJZvvftkXg
	 o7LLfnVjnwcUszxHtxdRJGtBMJ+RfODq3ddpD4pZE1zdsOdvRxSp+mgGakVcN2rMJW
	 c1DmqPmDYv2F5blJ3G1XqwEs4jSPRVFydj9X4dY7ZONCaGMFs8wJQPHKnbpVWuUsJN
	 0rAgDDfBAlc6GVOAYbQl6Ib+eolcNVLv0xnQKiUKGpKDDv6nJxmjDXdB3BSn9gsyiL
	 fbBOEurGhnKpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64088C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 23:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167062748738.26423.10136955640080908123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b687ac768a37cb9dbda4ae27ea50e40bb9f616eea311472ddfb9ea4134a100b1
Date: Fri, 09 Dec 2022 23:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670627487
