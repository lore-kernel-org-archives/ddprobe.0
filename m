Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2F943119
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 04:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTpAueHO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 06E37C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 04:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697605033;
	bh=I09DoRcMw84o6SmjLnhx2tVjMJ97GCfeahDjrbPoW8Y=;
	h=To:Subject:From:Date:From;
	b=LTpAueHOl9nxynojbqwB1hwNTn+mCy4dLG7IGeQJVdeu7ctfF4qt66HfSDWEYPmwf
	 55Y0vzB45Dh9KYIQGONJBH0Y0j5P2/qdFEYnZQFGpDGo7mbv93G10eaAR8mtG7pKiC
	 qCeM0McMJ7iFABuQnL0aSL8h8dYS6GUtzNEQGSSio0U3WRvwJZoq2a6Y6X0v0N2O5a
	 FKinNX9vCOo7IBZDOGGV3Rm4ZjfN0OoDaHrnP94Iho5543ajKiNJ2MfQr/5kyz3Xlt
	 P6beOjPfh1pa6M+LvgpaxFw2x5ELBgaj7zq9lNFDBkl5JhEqwxsLPVr6mE6crxEhK5
	 wOElvP58/1vqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF50ACDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 04:57:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169760503290.26153.898695289902271581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7e3a98ce18f7fdd1351d09af5e4bf074f0f47fdf26d164aecf5614acd28f067
Date: Wed, 18 Oct 2023 04:57:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697605032
