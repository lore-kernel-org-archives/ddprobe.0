Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A472342F6FF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784212714; cv=none; b=k3jJ8IfDM+tZWk6v8W3QlJ6UDiBOtxbRqZ4uD/FEIATgPTuviLQT6IxJzsWRpLeD8q8gSgTOphtx1AyKlgHvplX7phP+D2od2lG5wy0QWAjauMQX+cSXGrsIscVH0TyXZZOfERTioXCHmVLhLSkhr+WX8AdXmSS7v0/tmkgm0aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784212714; c=relaxed/simple;
	bh=NbjvXuMkppjdPm7bxX0W+jAAwNz5/tG7glk2PwdSBBw=;
	h=To:Subject:From:Message-Id:Date; b=WMyTfzqsUu5p8EXtsZNH9RoaYR6a4gDYhlInJ4b/AUZ+YjX6aLQyl9DhChB3gYjKgM/f5YJCdTXmrDwep/UKGg5bKHSMuCEnL+y6Gz7ZorNBiSy0w1YW0jtMGsvYEPTmxbUCaj3rfHBhqGl49OV1eubhfvyFichELRLIY2Rz4zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViGyXI7j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViGyXI7j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3B48AC2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784212714;
	bh=NbjvXuMkppjdPm7bxX0W+jAAwNz5/tG7glk2PwdSBBw=;
	h=To:Subject:From:Date:From;
	b=ViGyXI7jBRCOFSsKkn0VuWi0hemPmt+oqy2BvqJ3yMEMFVoCbxaXwVk5Lwee/tW9o
	 qlR1RT8hPpNIg0OkVLAqeha7IXJIaHXfYkMG53/2ZHwwcdxnrs5v9Oysf9lTE+l0r1
	 ASEqmPscyYJjV57xjDUEpHI0QerE0fzGNNn+VYkRjFVPQ4j2grHNvT2jSaKAkPP2Fu
	 975o4qZaXQTiGVbHx80U5PQzy26+XFroWURNRvXocN4+7fHd537gWTumHLL6ZHf+6a
	 U/61PjT3e12UbV6UlBSWICEKyJnfs7c8vgHx6cnahsHP6GoJxE1P3pbdSDM8h19hBJ
	 g9EpIF9rErQGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C00C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178421271390.24262.9267577548286218916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b4a245a06218af0618e2b9b3702c5be75547fa1c7871c01e0ab94d436293b8f
Date: Thu, 16 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784212713
