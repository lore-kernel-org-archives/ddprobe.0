Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 154A88829
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKEzihZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 865DDC433C8
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698331696;
	bh=OBY64wR84do4/0HpRvb8Cv/TFWNtWCLeDUQIue2xS2w=;
	h=To:Subject:From:Date:From;
	b=RKEzihZIEhE2CWY1u6doIYpjW6cI6v/UZvv3smMFk0m33DK2PXSJ2FKPM2P03gEE3
	 Ya+bgkK1x82vVqKW8MBoFcqqXusjf1YuxWohIJcGtR5SF60x/SkOpbZ7wjsmPPtTv2
	 Gpif5JmWuuapSG2b5LrkY3wn6Y7cNFs/gawCJtM+pMpWiNsBCuL6iA5A9jgMFrnc1k
	 HBPIapDJqghaLh7PROz5XPZAb033f6QY0oI3TIrZUNH+ZB4GfzqwA7A0fJ/PezF4qT
	 8JKCfKt52Rx7+7erQvHigKb+TElsfW/za9J1hut0FyPQEACLxbKaM3yuZoD2iGUBG+
	 5fHR8UghUdxJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68D67C25B48
	for <ddprobe@lists.linux.dev>; Thu, 26 Oct 2023 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169833169641.1711.782527524408855596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2415f93f2d986b8c90e46bab8bf9a7ba73b3677c4224cf2176276c8de6f173f2
Date: Thu, 26 Oct 2023 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698331696
