Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2FD2A2C
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABF5C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663591253;
	bh=KDkRa8bzMjv7MgKDulb23nxRFffDb04uf2zTSBiJxrQ=;
	h=To:Subject:From:Date:From;
	b=VYkmAAIhdi9Md2IDcdGdFCF9V+Ex8zc7te4KYxzARFHmC2B9E7PJsy5zsMk4/Fzce
	 D4dOovmHZNRKIVyLM10tPqasw0UYLIH1wxRE45zRoN4V1Hh9YRiVZac7oxbD1JRmQ3
	 8nNFmUC34uJFCtV6bAciglUt55TJjkv/Yyst5m+7J1HoEFJlq/PbpDw6DcpE3RgAA8
	 GjcTWygzqt3qABBJgcNsETsjwcA0+KuPtdizhrKRqG9l0Y94KAEnYoroSIVSzl0EzB
	 dxiwa5tk8Du0SW482W/np/c5/KmMfjsFk4EXQcy/4ogtqG3MriGJVIdCvLjn/Kvxds
	 DJ1lnRvWh5p5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EA85ECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 12:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166359125331.22448.594293146446345368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee28ae1ac15dfcaa69594b116eb710d85963a443850ff020e0da5bd3c1aaefb
Date: Mon, 19 Sep 2022 12:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663591253
