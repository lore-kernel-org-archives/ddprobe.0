Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52CAC111E
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:43:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC358C433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687869788;
	bh=YjgCREIwhyRMQAlQpDHX8dxh4z6GZHnOW/8WC8Byyfk=;
	h=To:Subject:From:Date:From;
	b=KTz3GfyxYNH33CmWUDh/2A3WCjFNexWQvdfI6211/VA5TIYEgcKb2z3MEYxQHw9b+
	 u9oeoXwwbIpdWKRsZfOST9qkEEfPtxE7RQYA1cihSPNjQXkyyFSKH7jlVIlgyAQZ2p
	 RFZGts9XsL+qHgiWmpp89U9qPESXtwAOJFtDlHbHZhj5fEd9j6wM9IWWw+l50xl4v6
	 1D3CqQO49tA5eDWZVWHwDk6UKbd049EFGHK0qQEHXLr6KUMctXw6YLMQIDdETn99k7
	 aj8UrKEhbSXpUQiY1/aKxyFhSIw+MZjMfW2PCy6jhcPBo/vSdBSbpIs1UcXbHE6Edc
	 j3ooGFcrA9xNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3879EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 12:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168786978866.28659.10108512655417772578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80aca1cd38614dfcc6f119273f7902f32746a43e75214e8c537e53e92bae2ba4
Date: Tue, 27 Jun 2023 12:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687869788
