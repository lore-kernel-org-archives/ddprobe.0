Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79B43111A
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:14:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF00BC433C9
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693264448;
	bh=FbB1fToepVzfLsPCddHdigWP8fdgMIW5y06JTGMtasc=;
	h=To:Subject:From:Date:From;
	b=ANBy65Jjb4r0FYy924+u1DbBTUNJiRoXNn9hl8/xHktUxpN5ITZS+LHDMmsk3LeqR
	 B2trn4f/9jw4uA7/L8zxz99nM5kskcYvuhcnAM+U+s6NgKD/hxHPYRtSgffw98zW5K
	 XqmUuemFWthXBc5n0WrnkQ0xHW0VXUXkztHPR5To4n9UxTRVbvw2s0zzEImfFxq1qJ
	 ekoXyjy6B511mWq+2h97S/wApJ9zKNA2/13X9CknESM6xZOnapBN4Ju8fMvym7wEAi
	 sRqC6AMTzJwSa+fB0f/OgZ+KDKmStDfemfxRtk8eHqn4JOM4vwOBnCy2pz/WGu3jpR
	 HCLAcl2YzRUFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B093CC83F11
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 23:14:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169326444871.26020.18059219829873090010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae0d224e320d9dc9a718c903708382900e2cb7a7887b0c2150f24a63e3836b42
Date: Mon, 28 Aug 2023 23:14:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693264448
