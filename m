Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B19393DD1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756188593; cv=none; b=kvojIq3iSoHvB5pWa6PZsS1RLKgJHOl5oE/DaK881+wXFGcNR2GZIGINX2du15FWexmfmCOhrSxChn2VG65UQO4KMIQQ011AeO9y1Pfmy7lGPOmHiQ8hjUxv7qZaN3XownJzWWkAC8wOXQwCS/UEnAVdXtk1k+0RvnVW2j7cDuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756188593; c=relaxed/simple;
	bh=Q1hcqzpGZGPBFbOzyVYL2KsA/8L4F8Nlrer+32yEnF8=;
	h=To:Subject:From:Message-Id:Date; b=oPMAAzQDhM+2Y2Mbzj79XheV5E0WWMzE53/fio6GjpyXBSaSmmwN1L/TsV9QhekF/t2b6DLk4mmKl3kdk4jKmkJRSltJXGD3GYW57d81JUevCXWypbgUX8ABA3/Ahc+05zH1s1ML6q326jXK1ip5bHuQY3uwEp2TYfGCG2ro1fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BQiuWXAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BQiuWXAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4D5C113D0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756188593;
	bh=Q1hcqzpGZGPBFbOzyVYL2KsA/8L4F8Nlrer+32yEnF8=;
	h=To:Subject:From:Date:From;
	b=BQiuWXAvFsET+ZrkLzMDNP7eP4IWx6n8vYW6pxzdB+1s2MhtvnaRpnqvqsGKK4PP/
	 VO7EGcj/izS2oNhgHvf7Um1egdkWHxT+t6iOIMZWymlPzraG7cl8h8vyT+1dP7sEPA
	 3/uYxiPCJM6DGMu/TzvkJ0tsxVpMri0mUuUkHO+G0ZnRSnwejlAjYfCWm7wjMoLtNt
	 oI9lRY/UD/IbEHi/9lEoGOmYH47/PADH9PRLXkEmTHQ93UnYi/U2NaFJq1QPfXhp16
	 SWRUuiLmTuCZUFpa7p5G03Nti+jb2OabG1OR78akUeD958RYk5kgq0VM8gwZS3JJ5+
	 Hn/ca6tZhWt7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEE0CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618859357.13654.6785464171018258149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6eb6dc249667256b88895a971a8add7136384193e36e0d97df49f8793a63f50
Date: Tue, 26 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756188593
