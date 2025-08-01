Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF801FECBA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754037595; cv=none; b=iCE8BTv27UVVb7Eh9GCj/meBK4Jhxqq6qQ1nMd7ndC7V4LeSfTj8smsnKybCYew6oQWpE2fFQMC64uPlgsn2pXBrRdFW+Onmp7MPh25pjKtkkCKP4yikoj4LIK1KfG7p7+zZY6rh1ogtvAGM9+BmGPbd8B4Z2Av6KWkRG5tTUtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754037595; c=relaxed/simple;
	bh=PiQ/aZgL1XppYD2/X5b+zN/KrNiCJhcdEXWarcgcTyY=;
	h=To:Subject:From:Message-Id:Date; b=Aaz0rMLyvQMb84H5VdnYnFM/YVn15H987/Ku7SMR1sIbFMS7vgnZsHYW30XItCypQ/jpzMhRMTd3vUJU4cegS473gc7WO/8EB84DPFT1oKAp6KOUodrGmLvPceWk2Dgk46J4T2dtiAgYHQX89gBs48moDcgv/lT0j1SKYOZZb7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlHX8Brk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlHX8Brk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BFC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754037593;
	bh=PiQ/aZgL1XppYD2/X5b+zN/KrNiCJhcdEXWarcgcTyY=;
	h=To:Subject:From:Date:From;
	b=DlHX8BrkfkgS6HbhZDrfFhRdXpVCXEknrXhFOjYl7VgXA8mh2mLFJeWu/rOE4MxDH
	 UOhe++tQV6Xc5vAq0raNA7uIoKm9UA5rihls0y6CxydQOiyQU0pqdE/Wh6eG+jGDg+
	 10wq3fkqb7mlsgGzr/IUcFpsSUW6YWlUxGaUVV2Ag/f+oES6waJy0yGTT4xfZ1PObz
	 G4kip5kzqDi6MUoCaE85K1M9PHqlQETMTeuRCxf/s8WN3sq//lVMFMjswWHWiGJpav
	 Fd+rzdqr+Lsza4uIJO+WBVqF5p6UaQxZ/mWHeq4EWu0Q/B6AZghit5hYScKXfmrjhD
	 Pj7CDKNWynyGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91318C87FCA
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175403759358.16165.12534565715104365266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 455af301b638a8a15eba527283fa8490852ad190deb8969430ae687c11768e28
Date: Fri, 01 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754037593
