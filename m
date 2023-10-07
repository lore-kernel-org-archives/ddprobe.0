Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4068481
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCsH7jB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF322C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696664828;
	bh=EoE6kGW3abpFl6fe+QkKnNFk5F0YuAt5XNQYSjq3uGs=;
	h=To:Subject:From:Date:From;
	b=bCsH7jB1+Y/NYmSjUjMD1cmLVvEmw2OE0jrdBhl+sS06Olw6TxyE7FAY1EH5i4HGc
	 rZ7d4JnFzzMQH3+iSKJv6RX/CofyvSwCMPgPzuv1hKTmdRVBbMPkcVgRlmkV1sNgyK
	 gxk/FvFQmgEEnGIJ7TsB8J3jtC/otvIHmhdwkT4UN7xejr5TB/DxYBe0TM15kXDPTO
	 gFp8/VMeb4sHXZvTdQLAZuZmHGEIImKZCvv/KshvGhLwgyCD3QtsOf0rjcXD+Cv3Ye
	 0CW1DJx23NYdVhcqJanAC9EWftt3lUyg6z5XphGQPPhtOvPMYsvlY0KDbbnyilH/ge
	 lzaU9/VnJi9TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E2FE936FB
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 07:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666482872.31935.12576145741403161244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74be335d7e784b62a4dac09d132c1f9797d275646241701b07aff8b34304c64
Date: Sat, 07 Oct 2023 07:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696664828
