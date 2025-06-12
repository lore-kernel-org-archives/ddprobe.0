Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9BB3231825
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749728993; cv=none; b=jeR78fFP7qkzrOv5f0MwKkl4uXnn64+z/deK3xwftQxA/ciPAz/ybmgibxgjiwDE/fXDN8qnEpllRSE/BgNPBLNPnKuYb1hXOXBV81wrCkcUQlfygX6Pc7sH/t7Spl8AHn28Sgu4OPaYHWaIpxmXab77Ul02il/uYvlHPkGgiGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749728993; c=relaxed/simple;
	bh=7p6yTBxKYxQBN4TBWlzNl/Ndok8vKjyoDx4Ja7kvUzY=;
	h=To:Subject:From:Message-Id:Date; b=mddSbqfjt5XzN9p35UUP6vT/WIn+Vai+OW4ewl8Bl6+T6+25/W09/P3E7t9HYUC4Y4E637Zv40tKylIFqmCad2TW8t+m+JWjNiergtgNxy5c7KT7A9VaOzrFghuQKXkkHOe5sfLmcJxZafdhu/TuJ7O8xsP2EYMTtwpez/p7Uac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWGC0Qyw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWGC0Qyw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21B5C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749728993;
	bh=7p6yTBxKYxQBN4TBWlzNl/Ndok8vKjyoDx4Ja7kvUzY=;
	h=To:Subject:From:Date:From;
	b=lWGC0QywlCE+x7eZ5kQYlcF1H5RLeaEN9Xc0iym/kEY+hz+ESsaTdygZS0x+sAYfZ
	 T/o9FaYZQNVGRWfsngQDpd5nnTF+JNvSRGa7a+LfQJw8nPfKHEoldoqvc6O4Nt0rQ8
	 6Xlzs5KIi4HIdKpxgfqL5DeBGrHBs0ySfrGkAuaLBxLf9YJ1MW5Nd8YR4INyAFaseE
	 qRGlcacihBkIon02vH7DwSLSQBHF9ErJGL+C/v/ILgEjQBDAyXkQMpCsCPD2kTvuz/
	 8Qjrrf10guhUiMFgBv57frDvZSX4f9NTyXxOM5l0ot9pIBzvm4n3/170Dt3ebYsU7h
	 A7v7W3pCMSUug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903BDC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174972899358.12160.766946767729944511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c2e9159d050549332fedb49f0850d1f1cafb333c976ce1eed0e551370c19c3d
Date: Thu, 12 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749728993
