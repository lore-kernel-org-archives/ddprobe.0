Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C40A7E8
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712609297; cv=none; b=qv52Ts0sD0p8sgNy2bDOrnFuSFGBEfwO2PpbEJiI1t7VODPhzcigdKvKakpszxJdRDO6Kj+bga5oJkgwkFV91vehLazHZczHURpab7En4Bsmq3TIq/gjVPk0+fLQQXUR8BRXA6DtfYlDjsBGlxWTtOpuflYjPWKuuietuTX6Bc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712609297; c=relaxed/simple;
	bh=rcUWef/DRvtu1lVo9kfjI4M6PU3Ax/HSqQu7L+01Qdo=;
	h=To:Subject:From:Message-Id:Date; b=N3zZ5JuJpgl/1GurUOnDBX3TKpnLofap5br4JyEWmESp30IYG6MF9AaIJ3c5pROM7D/CL9ywjOIuIzHf3hHD+UvqK5DxHdb19rYyKTY2gFSDEL19WEzgzU+UIQxkWDZDsBBDuTWkA7OD0mSpvQboEgwMtesA4UPU3GayP89sKjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEfb/nik; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEfb/nik"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FEA3C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712609296;
	bh=rcUWef/DRvtu1lVo9kfjI4M6PU3Ax/HSqQu7L+01Qdo=;
	h=To:Subject:From:Date:From;
	b=nEfb/nikDt/8EGq1/YO5w4LVZK27N1NzwYB+xYNLGthrR90XurCcJQ6VbY2Jd5Bvv
	 /2G4CELcoPg40fkOKW4D+Y6xadP6bsMzg1nm+4pNefGkRNwnJddgsG6j5gnhJbplk9
	 Awk5i2K5SIXmUvRs5CKOCUvTK6brioc01FMC+poZAU0/l7wgRg9vJoO+RuWz8XydD7
	 3Ii0vfqxDfRDrM2QdukUgDoyK13GV8juAK99tEcoXECiJDj3dy3ebAZryDXRx2O5u/
	 64iuASm4dvMaPrZ0P1XCnkYOudHr1hgr7LI7l8DLIm+gbIOIKxA81jXxWnAyjGChj4
	 rAUIhnm+OEfKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CDBDC67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171260929640.1964.16972220793910797383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01befe5c55672439c6c502952b75039649520dbed7dd24e3a079759c90a9fa13
Date: Mon, 08 Apr 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712609296
