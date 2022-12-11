Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC6DD2912
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E1E4C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670788887;
	bh=XldMNFqBzy2GK19E1LgkDTXOW1oweVs6O17puhlGjFY=;
	h=To:Subject:From:Date:From;
	b=pWuoAeCXS6fERBhGMyyB45oD2cSzGZf99SQcbwuLNfm5peUJtxHJ1Ntd8U6PorJIr
	 AJF3CNLEwYaXoQARpgWIBhFZTWsFP1L6kOkieVKCGXaYms5ELtskQfO2IqmRkMmM9r
	 hzao6qGxfL8jcybM1aWoj2xIaD70SJysaz5S4Mj9ZpqBHD6NCuX+5i88ufhM1hRaRH
	 /rxNFzUroAx4mjdlVIOox55jpSUASLPerrQnpXtor3xGoZKhYAQGmthbwQZ1v9MV9v
	 FtDhYl+hRkkriDCULXsNYkQ4KQ9lY9UOTwSABUCCGcQ53Mf4FAwkXyKkbuX73pauoT
	 0OS8NEFsgkQvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 626C5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167078888739.24353.13033171281431270869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6320130d62f22e26ed460933470a4d2a583d274644a6f21306dea7276a4749
Date: Sun, 11 Dec 2022 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670788887
