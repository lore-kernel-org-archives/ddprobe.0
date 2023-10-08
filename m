Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9436F8F42
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 11:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eug7abEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7861C433C7
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 11:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696766228;
	bh=9uH23DaMLpe1KFC8NaYR4Xz/HN3NbrzN5OWKTVGXoiE=;
	h=To:Subject:From:Date:From;
	b=eug7abEvn6+Oy3g3XqKcsmcDZGxh36D720D/Ddk/7y32wvjK5uMGMxDLNGnRsSkAf
	 YyD1DzvMLfHn5a4+hYTnR1Xz4TcJKoYJympNfC8V/KUIqJ6HGNWyIpRvtCq4P08tn/
	 NWZj6G1KgJ935gzKEB6wfvm4RS3B27wVMeC56MJ4QqBnq9Zdmjd5BMu6txpyI0JXDx
	 h771Mxu+OnlNnzVrf9CDvV9Kvzs36hYni4gKE4dmE4yjHLIIsOU+zgAHgkFPK85Oqi
	 F+Xb9ihvt08LsyrVIiMkuG688LCHVgI0YFAmh4VYLcLLREYePekBk3qfRMhszFc2/6
	 XFc/FXJMU6XGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2DC8E95A82
	for <ddprobe@lists.linux.dev>; Sun,  8 Oct 2023 11:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169676622877.6862.4394169428311182036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c317e312791cf9a85fa258cef0f60e4bdfe03ed9b7dc599959434df43940140
Date: Sun, 08 Oct 2023 11:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696766228
