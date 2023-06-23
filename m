Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B467F
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4E3C433C0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687479188;
	bh=DQQx0E4yw6bLXSXyuGNhDDRCv+SZpbfVjz+jOIizZ6M=;
	h=To:Subject:From:Date:From;
	b=qcPmbjLXNyU1bfOTYlPvKQt/wVloxQQe7ml2g70Ky00LP7l3O6kLG8twFhwhp+mmo
	 mDNFxCgTzIvlKxhhPeY1j6+3LqKoO5o/7I4fSwfDTCNICsLhtq1c+1hWStRaL61/VN
	 fZS798x9aDzXGpym33DJ87OH3MslCTazrPw2IYPUO47elUYl31poR7vhcVidtFEhHz
	 2f7RGyicfqP57JCpkb/4gDs6Ha/tcmAVwgllNkWXT7qcdyllo7GtabTmpm2jyhiAg9
	 AtyEtU8K1Bfniw9enfKWOTss9qV9lIF8l5lV3VUlXj+30r0GU00WMLEIY7K9vQpIqv
	 4/4Yq9MjTOqdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB40EB64DA
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 00:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168747918869.29627.16189596151305122480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5d0a537f72c2d54c6235681f0beadcacefbd07078dbbc8514765b33aaa45001
Date: Fri, 23 Jun 2023 00:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687479188
