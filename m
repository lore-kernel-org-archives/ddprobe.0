Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30243270571
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745914794; cv=none; b=e9Q2Snvb0yvIFxwFUBXYuTB+xjk9RBwLSbR+GrfF6dO+QF37HxQT/F3UD5CxP8xm8ciWGrgoTedB90iIGh0/mFZAlbpvwdsYFyw7creSrne04OGCxxG/te7ZqRHCdh+J33bx0fuJAiXJoMND28gfBCOBU9/ht1inZjEsT5hfpm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745914794; c=relaxed/simple;
	bh=TP4gMBmI+7DkIINsBr+wldiD6D5EFbRElZ+fmz1hl+Q=;
	h=To:Subject:From:Message-Id:Date; b=ed0+4LTCXM2dusZvYC69RDD53situC+mLA87gW25l0r7cyl3fkWgPDSKNX3+E+gooEj5oEni58k0FXlJToPHQ42dMExd5xZMo+I4c+cVv9sNl0O8ubjhoftk+HqOr1IEtpIDw+JxBKV3oNlqz56Apv+yAsN++ohrQec+6qYDwqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmXBV6Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmXBV6Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF78C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745914793;
	bh=TP4gMBmI+7DkIINsBr+wldiD6D5EFbRElZ+fmz1hl+Q=;
	h=To:Subject:From:Date:From;
	b=bmXBV6Mq4p7sQ8n4Ymh+VCgHMDsn5tpsz6Y6+ABOQ8lqrsJPUO+aMtLRACtPeBRdS
	 1q+jZb9Gf8BTrb7bgDekgkwJn6ssIQRmqadu5JKCrORA4xAOXa6fCl4hZxeVO31Af8
	 jRztlldO/L2/YPO8rnH23h3QUKM47AUdFhV3/yQ+jYAtmbqG+3WaDJ8l4HiD0cXAqB
	 dqyagYt5bNvJuhlnM58bXOwZUgBPleNK7J0YXqULkZsls/0UPEvQ++NYL7PudWTKrg
	 snDB4JUIGeIVca9XJ7tjP6db7JU6r+EwKfW27pVFWU8BHNgTOgBDLwTRgX+hNWSiGu
	 zk0sbu0Bqdcig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F925C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591479364.12287.4592827608536887878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c313f7eef00663f2808a2f60b142505852bf00406ba2e3cdcd3006878c498d48
Date: Tue, 29 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745914793
