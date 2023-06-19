Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77EF1C2C5
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:42:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07E7C433C8
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:42:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687178528;
	bh=pnkHVIjXa8Ca8OXuIHepi+0Zn/x9p3y+lvDmhc0Ccik=;
	h=To:Subject:From:Date:From;
	b=gMdWglg741r41auTvGHDGvmOdl9WtXj+CVpCmnLqF0jeA4vW5Y7oYzFwvNGfB1nfs
	 LPxatREtSBoJxhmx10NAPuapxglliX9GGUkksgvZzFOVaA0UISiyqCcfu7f5skBIv7
	 WH7lPKx6HYOlpHfyEGsYUOdBYXT8bNvxO8y5rGea3raE9TlvExneZZV1Ve2jhdRpSl
	 V3XjT7KSViaEJoYP0Z2kcVBbzte5kwsu4iVg5zU/Iob4uF2uepXbyxa8iXvX10eXMc
	 CyUC6cBgekUMSfD/xRdc2/nOZ7/E9E+LEvJ28MU2epi+Ol8pb2rg+TeDn5G/cjyybz
	 gaLDLyAdKjMAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8E20EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jun 2023 12:42:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168717852874.16808.10753292271569333112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57767e6ef95fb41bfe38e4b1e28a76ecea93a7ebec3d6bdd42a55a4620b88fdc
Date: Mon, 19 Jun 2023 12:42:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687178528
