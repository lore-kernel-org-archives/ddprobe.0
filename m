Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51711A3BCB
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727175953; cv=none; b=bHGNs/M2cOXO01xmazJMWhEDcYjTZGApUeiVXUqYdYA/F7H3LAL3tQ0e75K6e50cQ78ArFSlimWgOFoNeySzUsIv1yxcL/9hUfgdCacr2MBX6BvemiblF7QL3y2Ep3lCyIXyVz9+Qzzvo0Y3DN010p4n07PgbNsn3t4SG7hUXO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727175953; c=relaxed/simple;
	bh=r/VQRiCfdGKmi3e/kUGdVISF5iM5nDiHElW3DLHJKLM=;
	h=To:Subject:From:Message-Id:Date; b=pB/Q9/5necsM5jm8o+urZ3p3KLiP7AtgVeaQJNMVRVToxpOJIU/l/H7Vri40r+mXYo0TGbkBJcpHLYKAEzf8NLHlOKK51pCHVueBVJ6nRx7X7t5P+1E2HFtYy/3PnKzXMjeU7ezt1y40cTTPNtakNNZSevWSTvMHcgak6KjacWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYLjMwXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYLjMwXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A811EC4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727175953;
	bh=r/VQRiCfdGKmi3e/kUGdVISF5iM5nDiHElW3DLHJKLM=;
	h=To:Subject:From:Date:From;
	b=QYLjMwXxm21GR20FkscIcXoqKBdebhNFsYi6A0eeyEbhd8ptIxdUI3wlukjb9o4QK
	 c8M7aaHN2/3I5PhyKrMXpzjn42y7CJ0BMjINycXlJyqRDwZx+0FPA2oNaXkhH1Zvqu
	 MT+A192lR+slD7qPGDvNaUd8XXsdNz2a4R1EoyOW1GMS7SlyvuoaIe52OWfvGS8/Ef
	 v40EKaKH+hhixgS7LNG0QOFMJuHDwYycY3u0IgR6u4S9PaZun+Zn+wELH1py9FC9tC
	 63FHqqTlcxKGDXYDFpGV+ihc1msgL+UboLHDG8sDCN9yLLxXp/vnDEL3IEtc5vpOG3
	 lmsKKhEaK68VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ECBCF9C6B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172717595359.13813.10865876974632229341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332954c6a5cb8b5d4d677729a3165b4fc3e4515c2f52c9bf5bdc03c22baadf71
Date: Tue, 24 Sep 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727175953
