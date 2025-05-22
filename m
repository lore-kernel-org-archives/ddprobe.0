Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5E328C01D
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747921794; cv=none; b=g4TsVmXuNAcoRy2Sh91ulu2nAqNzM7EEYIswjaauimeWdBIPyWVWDEBue6cr1fhxY568K5d10cKGdwUQNclFxwhJrn4NLvvyjjua76M5Pq+gcEubwVCx0lJMq9Wr2Jx6Ai04Z6BTu2QgP7SRW/OmyitCh8XIGT6M1wK+4KJCht0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747921794; c=relaxed/simple;
	bh=B0CyxTuO1oLVh8ouYTZU2ePYdHPU1+jX1YqtxlGKRwU=;
	h=To:Subject:From:Message-Id:Date; b=L7GWmyATyVcxaC6IxzPNNuwJPmxxDzxoC1FAlQmauARJnKLoUh0nRrhc+/oC9IVN30SDzdlWeWMEtxASSUwe16BKGo+GeNsjmGVIqqd6VG2VvoPQCaUPf3SJjJjSku3Q0peEpycVblMiCF8Dg89oGE4M2R+YaQMjw6GVIdrtANM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFaSxE1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFaSxE1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ED8C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747921793;
	bh=B0CyxTuO1oLVh8ouYTZU2ePYdHPU1+jX1YqtxlGKRwU=;
	h=To:Subject:From:Date:From;
	b=cFaSxE1ZgUIN/wwaXJvTFs/Q4WCyyvXw1cECwHk1ivmdxCn8sTmEmKtaoQ/G2R8Pb
	 cfxIkRGS+bGq1tEOeK/S038K70s3fFTDN75cisWDsQuG82ScHNaDb2WTDmR4xds4zg
	 kFqz9t9CGQx5GAPe3ovroKjxJ2Epae0glvIJ0P5Sworyqmsz6ZGVX/x9xZdkho495y
	 cNRmRiKWKkO78oFvv/iFGe/yMOzFq5ODqPFu3B0HcIFtNAnNNoVILucT1O2EUeH1U1
	 gYPi4ktIg0S7SCsq5GrTTC5NptHgSJts6WzRvJicpsf4+iiLZqR7d3XG0Yr/U8F5kr
	 45g3IPmcKX2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97546C54ED0
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792179357.24729.17134067136561220765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1656ca9dd6dbf29144b967b39210b1828c99c820cc5a58c4ee397e926fbabfc9
Date: Thu, 22 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747921793
