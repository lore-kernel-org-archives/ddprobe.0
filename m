Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A37B39FDD
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717352723; cv=none; b=rTC1dyjlQMTbfkA0qkTqiF7pRgvfAH1kvirIyVbYakkZi6CClCvb1j0rIuAzmRWGCvS/gbjWMyrNman0Ms/t9FIwuEPAiVVC2oAiZNt4RCgDkDXdJAlD8egOx85yn28FcsDckT+HdFyekEYSGJplgUtbnfTDT2GnErOkLrmbDBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717352723; c=relaxed/simple;
	bh=hpdTNM0NIQ7TCHJKYyPOYMp6yl50WnJ0vKPvY0k/3ww=;
	h=To:Subject:From:Message-Id:Date; b=tpvaVWBmOYnzPMztZ4EfiPqlEf2sIlqGLiioURHW8gC9GourNXO9w0gerNeaJfJPFP8mFgCiPSF1bxcBBZiQlTHsb2t6czCyf/wP2EU7l3x25vaUTsDQAt2ad1znoyzCFHvhtJPeObEpz6A52tgAvptHRvLKkr63anoWDFCtvbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrCZa1Cr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrCZa1Cr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BDCC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717352722;
	bh=hpdTNM0NIQ7TCHJKYyPOYMp6yl50WnJ0vKPvY0k/3ww=;
	h=To:Subject:From:Date:From;
	b=FrCZa1CrdxJn7X+UQQ6RNt2Duyx/PDnMmKeRTf8PRAlViq2rug04Z0EKKpHGxPGfk
	 9W/Z3cJL5xJpTWrIkm+tZu2EAhHYhDxnLLDsScpDBjm69FkU2mp4frC3xhdOwdQWJh
	 qxl/nCBP7OqG/tpXHODNxuJmKnjJDeQgwsk/DH7tW6KCeA7kjBdMpsWnD0x1MHCIK8
	 xdJHQX/1+aX5Hx/5LrlUIBNLpkLv/7tIc652kI1FHAz2x12plBdh3qdZBg9Iw8zwd+
	 zd842iJ51XF4F3brHfyrRLO6USA6ISgJQ6j/AQsWAZ4yd/7Aeuh3uP3COTGj1aOZDI
	 zpC7y+F7xaWYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CC8C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 18:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171735272278.29168.18212866462948092252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d85a38852fdcc70a6be81e9a81b6d52641120370127ee63fa49270534ed2e59
Date: Sun, 02 Jun 2024 18:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717352722
