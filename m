Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8185CB0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 10:36:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECCBEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 10:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686652566;
	bh=yydGNUMW0gqomaYj5qG3G9evHo+g8DfJnP5qPnCQzco=;
	h=To:Subject:From:Date:From;
	b=kI/YEmXuoPFRti9h4V26sXOgO8EX3QUXHYkw/99ePMMRCxCFdgVI7/aLcXhltiw26
	 FetS8EneyN9wgxGP1EMQ9TWoSoWBTRQcTIrXdM666mtuaVofOGBAs4X82UDumQNXEo
	 4VpgpYsc0UKblxrjdHk1sjsvcY/yfpzuEVOxCg7HLzJbBojEfnjiAGfGzsLLsgbkHM
	 9QHkeIrQSQqR22EAfzX/f7MBxI8qzLNaZBd3ZvvicIoQqVVOdishKiFHXfE3wdwiNV
	 Dp3gHXF+HVFWsxPPNvJ3fdkuPGY+AZodu+nLdYzTcqT4NQlbINGthxqpMv5Ui0abGS
	 9RS0PfeGR168Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C0CC77B7A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 10:36:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168665256577.19428.5630202977570971067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aeb6c8c4c2c77e8972d16b405d628452aea1402b4885154715ae2e0ad5045ae0
Date: Tue, 13 Jun 2023 10:36:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686652565
