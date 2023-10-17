Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 795BE2D798
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 18:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2jg5Zgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D77ECC433CB
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 18:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697567228;
	bh=axsgMPDVGhBTYlhBywyN1i8bb2xae8Hz+U+8Co23FEc=;
	h=To:Subject:From:Date:From;
	b=F2jg5Zgxp1Rf0eeGzkq5omQAThhGrQnV9HS/8XeY/CAPS5nFg4lnL77mesVwIzfbA
	 s0jCO87PRF4mwGfEn48FbO5mL9UogHJV3UzDHD/T1m9ZVh0aPZJw9UT4uD+yA12qRD
	 h81l/v+GMSTrFIpgHJasAOchrFcLfiwweJE3uQrHo3fEyqfj2Z8ovyzXccrE+zigjA
	 lIzoX96UJQ9Wwai6OxCWkPyOvnEzS52PBrais9sTRhsIMfJWTIvvqLVlwzCiCPjXUh
	 V6aiSqj6cTprd/WFzo0zdUaDF3yIJVbcDVkWmV8DEs6wt+p02+nYRRUW8MT7Da4Hqj
	 TNFoA3P2vyZQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FDBCDB474
	for <ddprobe@lists.linux.dev>; Tue, 17 Oct 2023 18:27:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169756722873.1478.16590953676360231014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6243f4256bb6905caf412d8fa5d0c6afc008a0bcc4842c2993e42eb299aa2a33
Date: Tue, 17 Oct 2023 18:27:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697567228
