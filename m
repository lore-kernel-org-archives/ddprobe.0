Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A610911195
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eo/dUyr9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3A3C433C7
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702888696;
	bh=vlhpYE/8TgXRiu2ikAXa0DuL5uDNK6rENhoMpOZDglE=;
	h=To:Subject:From:Date:From;
	b=Eo/dUyr9cUpvOb997YByKmCjj+/ivIe0Ht2aNqlOEMBworIfGx8+cpMuQ5+8V51LL
	 mOXYspdd+2JHhi8EO2R0EN+FjN6G+0Lcd0wE3ce3lr8NA0nAGbFSAWVk1+yrrIi4lG
	 pipE7ICwMcJW9nb5A3A05SaIOHjtocPbmmkLj6f3HgTccGbXj5JlMtKEdLOkwzCz3j
	 IevLUkBp04jONOeAOrLYoQIj15/HDrXuPc07/HeHjc1UMITcWzDgvMoR3897IWRW3e
	 Nbyqn08ucP9gvdT+TiVjPvq+ysamPCsn0wS65/7W9vlyjcLtWMzchZDCN9/3mVPmd8
	 2Yl3wvcTsY0nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E809C35274
	for <ddprobe@lists.linux.dev>; Mon, 18 Dec 2023 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170288869638.29799.8532732826549191924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe79edd91527337e17f87d5673ba96e46f28dd68b100fdc428b9069b234e767
Date: Mon, 18 Dec 2023 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702888696
