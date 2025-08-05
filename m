Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA2F2701D6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754398794; cv=none; b=Cpla7vWiWxfYc/7MKWpvQaugp+/SdznU9WofTjAkcK/tbsMOjMTj3tZX01MMTyn7OkbvnjeaiyHZ6oeqNrJIS4m6q78zOYjXxu9NWcu+hl6/gK+VEQL4dvEaz2WwKLCfs2+TafJVKOQCLsDpXRFPfmyR+BIrH+ZL6Fowb3O27Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754398794; c=relaxed/simple;
	bh=0gkye6rzNxkLvDOcYWUX8uaZCB4slCa1Oj9up3K+LU8=;
	h=To:Subject:From:Message-Id:Date; b=is1J6Bv88RATmuZpR8pk9Gvtwnp6DlrsoW75Lf6lsJjU/aMNFsP46l3XYPGR7Jhml7OK4h9l58iDm51ZsONcvh6zHgvBePTJXRjBcTt/YaAB2hcsCgZ7PyEIsBa8z59fvqds9ZAD/WT4FqwS0lEqRRikR8zTKAYxVG0ArMCi1BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DenOMoNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DenOMoNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E31FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754398793;
	bh=0gkye6rzNxkLvDOcYWUX8uaZCB4slCa1Oj9up3K+LU8=;
	h=To:Subject:From:Date:From;
	b=DenOMoNHwLdbzBczsf3Xtk17pAMOkPQhM913dAUdPkQ8cocG2pCtuCyqhMwH52wZ9
	 S9p7b8d8B/HcmWFlu5BgJ4RyiUlRp0SQr8Pq7wlYeYbiWV58DBxkDQSTrXs3CAkYlt
	 PBaz4g7drxmpwuOzENLgVfwScydp+84q3Il4F0Gn6Azm/GVom90sLDKDyuG+lZQL02
	 Hg0j4EaMEfgc0zcbKEDfRzz2Hq29KeqLn3zNjKmGESVLFBgptEnU+m1yvo0wAw4SiT
	 DFtkNG/1ICq45mksufIL7tsmwVLIC+RyfWpPs/paiGtnpZFGBR2SWWWA2x0aCfIY2K
	 OPH0yM2SZ4hOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0CC87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175439879357.23598.12138197094754595596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccf5873acc34b09a70a6d031948720d25deb848a55ce6b22f7a91e896193468
Date: Tue, 05 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754398793
